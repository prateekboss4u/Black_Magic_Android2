//
//  TVShowListView.swift
//  BMSReborn
//
//  Created by Prateek Sikarwar on 18/09/21.
//

import SwiftUI

struct TVShowListView: View {
    var column = Array(repeating: GridItem(.flexible()), count: 2)
    @State var text = ""
    var book: [TVContent] = ShowList.shows
    var body: some View {
        ScrollView(.vertical) {
            
            VStack() {
                SearchBar(text: $text)
                    .padding(.top, 140)
                
                VStack(alignment: .leading) {
                    Text("Now Playing")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack {
                            ForEach((book).filter({"\($0)".contains(text) || text.isEmpty}), id: \.id) { video in
                                NavigationLink(
                                    destination: TVDetail(book: video),
                                    label: {
                                        Image(video.imageName)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 350, height: 500)
                                            .cornerRadius(30)
                                    })
                                
                            }
                        }.padding()
                        
                    }
                }
                
                VStack(alignment: .leading) {
                    Text("Action")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack {
                            ForEach(book, id: \.id) { video in
                                NavigationLink(
                                    destination: TVDetail(book: video),
                                    label: {
                                        Image(video.imageName)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 200, height: 300)
                                            .cornerRadius(20)
                                    })
                            }
                        }.padding()
                    }
                }.padding()
                VStack(alignment: .leading) {
                    Text("Comedy")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack {
                            ForEach(book, id: \.id) { video in
                                NavigationLink(
                                    destination: TVDetail(book: video),
                                    label: {
                                        Image(video.imageName)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 200, height: 300)
                                            .cornerRadius(20)
                                    })
                            }
                        }.padding()
                    }
                }.padding()
            }
        }.background(Color.black).ignoresSafeArea()
        
    }
}

struct TVShowListView_Previews: PreviewProvider {
    static var previews: some View {
        TVShowListView()
    }
}
