//
//  ContentView.swift
//  BMSReborn
//
//  Created by Prateek Sikarwar on 18/09/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 40) {
                NavigationLink(destination: MovieList2View()) {
                    Text("Movies")
                        .font(.title)
                        .bold()
                        .frame(width: 300, height: 150)
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .top, endPoint: .bottom))
                        .cornerRadius(30)
                        .shadow(color: .black, radius: 10, x: 10, y: 10)
                        .animation(.easeInOut(duration: 2))
                }
                NavigationLink(destination: BookListView()) {
                    Text("Books")
                        .font(.title)
                        .bold()
                        .frame(width: 300, height: 150)
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [.green, .blue]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .cornerRadius(30)
                        .shadow(color: .black, radius: 10, x: 10, y: 10)
                        .animation(.easeInOut(duration: 2))
                }
                NavigationLink(destination: TVShowListView()) {
                    Text("TV Shows")
                        .font(.title)
                        .bold()
                        .frame(width: 300, height: 150)
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [.pink, .purple]), startPoint: .top, endPoint: .bottom))
                        .cornerRadius(30)
                        .shadow(color: .black, radius: 10, x: 10, y: 10)
                        .animation(.easeInOut(duration: 2))
                }
            }.padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
