//
//  TVDetail.swift
//  BMSReborn
//
//  Created by Prateek Sikarwar on 23/09/21.
//

import SwiftUI

struct TVDetail: View {
    var book: TVContent
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
                            Text("Detail Shows")
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
                        
                        StarView(rating: book.rating, maxRating: 10)
                            .frame(width: 200, height: 20)
                        
                        VStack(alignment: .leading, spacing: 15, content: {
                            Text(book.title)
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("Creator : \(book.director)")
                                .foregroundColor(.white)
                                .overlay(
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                        .offset(x: 35, y: -2)
                                    ,alignment: .trailing
                                )
                            
                            Text(book.releaseDate)
                                .font(.title2)
                                .foregroundColor(.white)
                            
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
                        Link(destination: book.url, label: {
                            Text("Watch Now")
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

struct TVDetail_Previews: PreviewProvider {
    static var previews: some View {
        TVDetail(book: ShowList.shows.first!)
    }
}
