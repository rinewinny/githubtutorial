//
//  home 1.swift
//  github
//
//  Created by Anne Pham on 7/16/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            home_1()
            home_2()
        }
    }
}

struct ColumnData {
    let imageName: String
    let text: String
    let bio: String
}

struct home_1: View {
    var body: some View {
        HStack {
            Spacer()
            Image("location")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .padding(.all)
                .frame(width: 50.0, height: 50.0)
                .background(Color(red: 0.976, green: 0.976, blue: 0.882))
                .cornerRadius(8)
            
            VStack {
                HStack {
                    Text("Your Location")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                HStack {
                    Text("Seattle, Washington")
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
            }
            Spacer()
            Image("notification")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .padding(.all)
                .frame(width: 50.0, height: 50.0)
                .background(Color(red: 0.976, green: 0.976, blue: 0.882))
                .cornerRadius(8)
            Spacer()
        }
    }
}

struct home_2: View {
    let columns = [
        ColumnData(imageName: "kitty", text: "Luna", bio: "placeholder"),
        ColumnData(imageName: "doggy", text: "Juno", bio: "placeholder"),
        ColumnData(imageName: "cat 2", text: "name", bio: "placeholder")
    ]
    
    var body: some View {
      
        HStack() {
            Image(systemName: "magnifyingglass")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding(.horizontal)
                            .frame(width: 48.0, height: 45.0)
            Text("search your pet")
                .font(.headline)
                .fontWeight(.thin)
            Spacer()
        }
        .border(Color(red: 0.91, green: 0.91, blue: 0.914), width: 2)
        .cornerRadius(7)
        .padding(.all, 5.0)
        
        HStack() {
            Text("Near you")
                .font(.headline)
                .fontWeight(.semibold)
                .padding(.leading)
            Spacer()
            Text("see all")
                .font(.subheadline)
                .padding(.trailing)
        }
        ScrollView(.horizontal) {
            LazyHStack {
                ForEach(columns, id: \.imageName) { column in
                    VStack {
                        Image(column.imageName)
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200.0, height: 200.0)
                            .background(Color.white) // solid background behind the image
                            .cornerRadius(8)
                        
                        VStack(alignment: .leading) {
                            Text(column.text)
                                .font(.headline)
                                .padding(.top, 4)
                            
                            Text(column.bio)
                                .font(.subheadline)
                                .padding(.top, 2)
                        }
                        .padding()
                        .background(Color.white) // solid background behind the text
                        .cornerRadius(8)
                        .shadow(radius: 4)
                    }
                    .padding()
                    .background(Color.gray.opacity(0.2)) // background for the entire column
                    .cornerRadius(8)
                }
            }
            .padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
