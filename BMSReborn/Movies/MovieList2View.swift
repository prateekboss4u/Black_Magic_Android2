//
//  MovieList2View.swift
//  BMSReborn
//
//  Created by Prateek Sikarwar on 20/09/21.
//

import SwiftUI

struct MovieList2View: View {
    var column = Array(repeating: GridItem(.flexible()), count: 2)
    @State var text = ""
    var movie: [MovieContent] = MovieList.movies
    var body: some View {
        ScrollView(.vertical) {
            
            VStack() {
                SearchBar(text: $text)
                    .padding(.top, 140)
                
                VStack(alignment: .leading) {

                    //ForEach((movie).filter({"\($0)".contains(text)}), id: \.id) { i in
                      //  Text("\(i.imageName)")
                    //}
                    
                    Text("Now Playing")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack {
                            ForEach((movie).filter({"\($0)".contains(text) || text.isEmpty}), id: \.id) { video in
                                NavigationLink(
                                    destination: MovieDetail(movie: video),
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
                }.padding()
                
                VStack(alignment: .leading) {
                    Text("Action")
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack {
                            ForEach(movie, id: \.id) { video in
                                NavigationLink(
                                    destination: MovieDetail(movie: video),
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
                            ForEach(movie, id: \.id) { video in
                                NavigationLink(
                                    destination: MovieDetail(movie: video),
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

struct MovieList2View_Previews: PreviewProvider {
    static var previews: some View {
        MovieList2View()
    }
}
