//
//  home 1.swift
//  github
//
//  Created by Anne Pham on 7/16/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(red: 0.98, green: 0.97, blue: 0.95) // Background color extracted from the image
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    home_1()
                    home_2()
                    Spacer()
                    MenuBar()
                }
            }
        }
    }
}

struct ColumnData: Identifiable {
    let id = UUID()
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
                .background(Color(red: 0.86, green: 0.69, blue: 0.66))
                .cornerRadius(8)

            VStack {
                HStack {
                    Text("Your Location")
                        .font(.custom("Migra-Extralight", size: 14))
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
                HStack {
                    Text("Seattle, Washington")
                        .font(.custom("Migra-Extralight", size: 16))
                        .fontWeight(.medium)
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
                .background(Color(red: 0.86, green: 0.69, blue: 0.66))
                .cornerRadius(8)
            Spacer()
        }
    }
}

struct home_2: View {
    let columns = [
        ColumnData(imageName: "kitty", text: "Luna", gender: "Female", age: "1y 4m", favorites: "heart.fill", adopt: "Adopt"),
        ColumnData(imageName: "doggy", text: "Juno", gender: "Male", age: "0y 8m", favorites: "heart.fill", adopt: "Adopt"),
        ColumnData(imageName: "Screenshot 2024-07-19 at 5.08.33 AM", text: "Milo", gender: "Male", age: "2y 3m", favorites: "heart.fill", adopt: "Adopt")
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
                    .font(.custom("Aileron-Regular", size: 16))
                    .fontWeight(.thin)
                    
                Spacer()
            }
            .border(Color(hue: 0.064, saturation: 0.077, brightness: 0.889), width: 2)
            .cornerRadius(7)
            .padding(.all, 5.0)
            
            Text("Categories")
                .font(.custom("Migra-Extralight", size: 26))
                .fontWeight(.regular)
                .padding(.leading)
                .padding(.top, 8)
            
            CategoryBar()
                .padding(.top, -8)
            
            HStack {
                Text("Near you")
                    .font(.custom("Migra-Extralight", size: 26))
                    .fontWeight(.regular)
                    .padding(.leading)
                    .padding(.top, -8)
                Spacer()
                Text("see all")
                    .font(.custom("Migra-Extralight", size: 16))
                    .padding(.trailing)
            }
            
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(columns) { column in
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
                                    .font(.custom("Migra-Extralight", size: 22))
                                    .fontWeight(.regular)
                                    .multilineTextAlignment(.leading)
                                    .padding(.top, 4)
                                    .padding(.bottom, -5)
                                HStack {
                                    Text(column.gender)
                                        .font(.custom("Aileron-Regular", size: 16))
                                        .padding(.top, 2)
                                    Spacer()
                                    Text(column.age)
                                        .font(.custom("Aileron-Regular", size: 16))
                                        .padding(.top, 2)
                                }
                                HStack {
                                    Image(systemName: column.favorites)
                                        .padding(.all, 7.0)
                                        .foregroundColor(.red)
                                        .background(Color(hue: 0.089, saturation: 0.311, brightness: 0.956))
                                        .cornerRadius(6)
                                        .padding(.top, 9.0)
                
                                    Spacer()
                                    
                                    NavigationLink(destination: PetProfile1(pet: column)) {
                                        Text(column.adopt)
                                            .padding(.all, 7)
                                            .font(.custom("Aileron-Regular", size: 14))
                                            .background(Color(red: 0.86, green: 0.69, blue: 0.66))
                                            .foregroundColor(.white)
                                            .cornerRadius(6)
                                            .padding(.top, 9.0)
                                    }
                                }
                            }
                            .padding()
                            .background(Color(red: 0.98, green: 0.97, blue: 0.95))
                            .cornerRadius(6)
                        }
                        .padding()
                        .background(Color(red: 0.86, green: 0.69, blue: 0.66))
                        .cornerRadius(22)
                    }
                }
                .padding()
            }
            .frame(height: 350)
        }
    }
}

struct CategoryBar: View {
    var body: some View {
        HStack {
            VStack {
                Text("Cats")
                    .font(.custom("Aileron-Regular", size: 17))
                    .padding(.all)
            }
            .background(Color(red: 0.86, green: 0.69, blue: 0.66))
            .cornerRadius(7)
            .padding(.top, 8.0)
            .padding([.bottom], 40.0)
            .padding(.leading)
            
            VStack {
                Text("Dogs")
                    .font(.custom("Aileron-Regular", size: 17))
                    .padding(.all)
            }
            .background(Color(red: 0.86, green: 0.69, blue: 0.66))
            .cornerRadius(7)
            .padding(.top, 8.0)
            .padding([.bottom], 40.0)
            
            VStack {
                Text("Bunnies")
                    .font(.custom("Aileron-Regular", size: 17))
                    .padding(.all)
            }
            .background(Color(red: 0.86, green: 0.69, blue: 0.66))
            .cornerRadius(7)
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
                    .font(.custom("Migra-Extralight", size: 18))
            }
            Spacer()
            VStack {
                Image(systemName: "heart")
                    .padding(.bottom, 5.0)
                Text("Favorites")
                    .font(.custom("Migra-Extralight", size: 18))
            }
            Spacer()
            VStack {
                Image(systemName: "person")
                    .padding(.bottom, 5.0)
                Text("Profile")
                    .font(.custom("Migra-Extralight", size: 18))
                    
            }
            Spacer()
        }
        .padding()
        .background(Color(red: 0.85, green: 0.72, blue: 0.69))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
