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
            Spacer()
            MenuBar()
        }
    }
}

struct ColumnData {
    let imageName: String
    let text: String
    let gender: String
    let age: String
    let favorites: String
    let adopt: String
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
        ColumnData(imageName: "kitty", text: "Luna", gender: "Female", age:"1y 4m", favorites: "heart.fill", adopt: "Adopt"),
        ColumnData(imageName: "doggy", text: "Juno", gender: "Male", age:"0y 8m", favorites: "heart.fill", adopt: "Adopt"),
        ColumnData(imageName: "cat 2", text: "Milo", gender: "Male", age: "2y 3m", favorites: "heart.fill", adopt: "Adopt")
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
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
            
            Text("Categories")
                .font(.headline)
                .fontWeight(.semibold)
                .padding(.leading)
                .padding(.top, 8) // Added to adjust padding above categories
                
            CategoryBar()
                .padding(.top, -8) // Adjust this value to control the gap between the title and categories
            
            HStack {
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
                                .resizable()
                                .scaledToFill()
                                .frame(width: 175.0, height: 190.0)
                                .clipped()
                                .background(Color.white)
                                .cornerRadius(8)
                            
                            VStack(alignment: .leading) {
                                Text(column.text)
                                    .font(.headline)
                                    .multilineTextAlignment(.leading)
                                    .padding(.top, 4)
                                    .padding(.bottom, -5)
                                HStack {
                                    Text(column.gender)
                                        .font(.subheadline)
                                        .padding(.top, 2)
                                    Spacer()
                                    Text(column.age)
                                        .font(.subheadline)
                                        .padding(.top, 2)
                                }
                                HStack {
                                    Image(systemName: column.favorites)
                                        .padding(.all, 7.0)
                                        .foregroundColor(.red)
                                        .background(Color(red: 0.976, green: 0.976, blue: 0.881))
                                        .cornerRadius(6)
                                        .padding(.top, 9.0)
                                
                                    Spacer()
                                    
                                    Text(column.adopt)
                                        .padding(.all, 7)
                                        .font(.subheadline)
                                        .background(.blue)
                                        .cornerRadius(6)
                                        .padding(.top, 9.0)
                                        
                                }
                            }
                            .padding()
                            .background(Color.white) // solid background behind the text
                            .cornerRadius(6)
                        
                        }
                        .padding()
                        .background(Color(hue: 0.942, saturation: 0.458, brightness: 0.942, opacity: 0.818)) // background for the entire column
                        .cornerRadius(8)
                    }
                }
                .padding()
            }
        }
    }
}

struct CategoryBar: View {
    var body: some View {
        HStack {
            VStack {
                Text("Cats")
                    .font(.callout)
                    .padding(.all)
            }
            .background(Color(red: 0.976, green: 0.976, blue: 0.882))
            .padding(.top, 8.0)
            .padding([.bottom], 40.0)
            .padding(.leading)
            
            VStack {
                Text("Dogs")
                    .font(.callout)
                    .padding(.all)
            }
            .background(Color(red: 0.976, green: 0.976, blue: 0.882))
            .padding(.top, 8.0)
            .padding([.bottom,], 40.0)
            
            
            VStack {
                Text("Bunnies")
                    .font(.callout)
                    .padding(.all)
            }
            .background(Color(red: 0.976, green: 0.976, blue: 0.882))
            .padding(.top, 8.0)
            .padding([.bottom, .trailing], 40.0)
        }
    }
}

struct MenuBar: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Image(systemName: "house")
                    .padding(.bottom, 5.0)
                Text("Home")
                    .font(.footnote)
            }
            Spacer()
            VStack {
                Image(systemName: "heart")
                    .padding(.bottom, 5.0)
                Text("Favorites")
                    .font(.footnote)
            }
            Spacer()
            VStack {
                Image(systemName: "person")
                    .padding(.bottom, 5.0)
                Text("Profile")
                    .font(.footnote)
            }
            Spacer()
        }
        .padding()
        .background(Color(red: 0.976, green: 0.976, blue: 0.881))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
