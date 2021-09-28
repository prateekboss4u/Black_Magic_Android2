//
//  ContentView.swift
//  eBook
//
//  Created by Kavsoft on 16/03/20.
//  Copyright © 2020 Kavsoft. All rights reserved.
//

import SwiftUI

struct BookListView: View {
    var column = Array(repeating: GridItem(.flexible()), count: 2)
    @State var text = ""
    var book: [BookContent] = BookList.books
    var body: some View {
        VStack {
            SearchBar(text: $text)
                .padding(.top, 140)
            
            ScrollView(){
                //Spacer()
                
                
                ForEach(book.filter({"\($0)".contains(text) || text.isEmpty}), id: \.id) { pages in
                    
                    Text(pages.title)
                    NavigationLink(
                        destination: BookDetail(book: pages),
                        label: {
                            HStack {
                                Image(pages.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 200, height: 200)
                                
                                
                                VStack(alignment: .leading) {
                                    Text(pages.title)
                                        .font(.subheadline)
                                        .bold()
                                        .lineLimit(2)
                                        .foregroundColor(.white)
                                        .padding()
                                    
                                    Text("BY: \(pages.writer)")
                                        .italic()
                                        .foregroundColor(.white)
                                    
                                }
                                Spacer()
                            }
                        })
                }
            }
            
        }.background(Color.black).ignoresSafeArea()
        
        
    }
}

struct BookListView_Previews: PreviewProvider {
    static var previews: some View {
        BookListView()
            .preferredColorScheme(.light)
    }
}

