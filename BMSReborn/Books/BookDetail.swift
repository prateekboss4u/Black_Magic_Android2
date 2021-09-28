//
//  BookDetail.swift
//  BMSReborn
//
//  Created by Prateek Sikarwar on 22/09/21.
//

import SwiftUI

struct BookDetail: View {
    var book: BookContent
    @State var button: Bool = false
    var body: some View {
        ScrollView(.vertical, showsIndicators: false,
                   content: {
                    
                    LazyVStack( spacing: 15, pinnedViews: [.sectionFooters], content: {
                        HStack {
                            
                            
                            Spacer()
                            
                            Button(action: {button.toggle()}, label: {
                                if button == true {
                                    Image(systemName: "bookmark.fill")
                                        .font(.title2)
                                    
                                }
                                else {
                                    Image(systemName: "bookmark")
                                        .font(.title2)
                                    
                                }
                            })
                        }
                        .overlay(
                            Text("Book Detail")
                                .font(.title2)
                                .fontWeight(.semibold)
                        )
                        .padding()
                        .foregroundColor(.white)
                        
                        ZStack {
                            
                            RoundedRectangle(cornerRadius: 15)
                                .fill(Color.white.opacity(0.2))
                                .padding(.horizontal)
                                .offset(y: 12)
                            
                            Image(book.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(20)
                            
                        }
                        .frame(width: getRect().width / 1.5,
                               height: getRect().height / 2)
                        .padding(.top, 20)
                        
                        
                        VStack(alignment: .leading, spacing: 15, content: {
                            Text(book.title)
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("By: \(book.writer)")
                                .foregroundColor(.white)
                                .overlay(
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                        .offset(x: 35, y: -2)
                                    ,alignment: .trailing
                                )
                            
                            Text("Over View")
                                .font(.title)
                                .foregroundColor(.white)
                                .bold()
                            Text(book.description)
                                .foregroundColor(.white)
                            
                        }).padding(.top, 55)
                        .padding(.horizontal)
                        .padding(.leading, 10)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        Spacer()
                        Link(destination: book.buyingUrl, label: {
                            Text("Buy")
                                .bold()
                                .font(.title)
                                .frame(width: 280, height: 50)
                                .background(Color(.systemRed))
                                .foregroundColor(.white)
                                .cornerRadius(15)
                        })
                    })
                   }).background(Color(.black).ignoresSafeArea())
        
    }
}

struct BookDetail_Previews: PreviewProvider {
    static var previews: some View {
        BookDetail(book: BookList.books.first!)
    }
}

extension View{
    func getRect1() -> CGRect {
        return UIScreen.main.bounds
    }
}
