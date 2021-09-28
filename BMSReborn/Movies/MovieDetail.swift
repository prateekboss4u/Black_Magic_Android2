//
//  MovieDetail.swift
//  BMSReborn
//
//  Created by Prateek Sikarwar on 19/09/21.
//

import SwiftUI

struct MovieDetail: View {
    var movie: MovieContent
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
                            Text("Detail Movie")
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
                            
                            
                            Image(movie.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(20)
                            
                        }
                        .frame(width: getRect().width / 1.5,
                               height: getRect().height / 2)
                        .padding(.top, 20)
                        
                        StarView(rating: movie.rating, maxRating: 10)
                            .frame(width: 200, height: 20)
                        
                        
                        VStack(alignment: .leading, spacing: 15, content: {
                            Text(movie.title)
                                .font(.title2)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Text("Director :   \(movie.director)")
                                .foregroundColor(.white)
                                .bold()
                                .overlay(
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                        .offset(x: 35, y: -2)
                                    ,alignment: .trailing
                                )
                            Text(movie.releaseDate)
                                .font(.title2)
                                .foregroundColor(.white)
                            
                            Text("Over View")
                                .font(.title)
                                .foregroundColor(.white)
                                .bold()
                            Text(movie.description)
                                .foregroundColor(.white)
                            
                        }).padding(.top, 55)
                        .padding(.horizontal)
                        .padding(.leading, 10)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        Spacer()
                        Link(destination: movie.url, label: {
                            Text("Trailer")
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

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: MovieList.movies.first!)
    }
}

extension View{
    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
}
