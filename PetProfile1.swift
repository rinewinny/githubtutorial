//
//  PetProfile1.swift
//  github
//
//  Created by Anne Pham on 7/18/24.
//

import SwiftUI

struct PetProfile1: View {
    var pet: ColumnData

    var body: some View {
        ZStack {
            Color(red: 0.98, green: 0.97, blue: 0.95)
                .ignoresSafeArea()

            VStack(alignment: .leading, spacing: 20) {
                Image(pet.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 250)
                    .cornerRadius(20)
                    .padding()
                    .padding(.top, 20)

                Text(pet.text)
                    .font(.custom("MigraItalic-ExtraboldItalic", size: 40))
                    .font(.system(size: 28, weight: .bold))
                    .padding(.horizontal)

                HStack {
                    Image(systemName: "mappin.and.ellipse")
                        .padding(.top, -18)
                    Text("Seattle, Washington")
                        .font(.custom("Aileron-Regular", size: 17))
                        .font(.system(size: 16))
                        .foregroundColor(.gray)
                        .padding(.top, -18)
                }
                .padding(.horizontal)

                HStack(spacing: 15) {
                    PetDetailView(title: "Gender", detail: pet.gender)
                    PetDetailView(title: "Age", detail: pet.age)
                    PetDetailView(title: "Breed", detail: "Siamese")
                }
                .padding(.horizontal)

                Text("Luna is a very sweet and affectionate kitty. She loves to be brushed and tolerates nail clippings and meds extremely well.")
                    .font(.custom("Aileron-Regular", size: 17))
                    .padding(.horizontal)

                HStack {
                    Image(systemName: "person.circle")
                        .foregroundColor(.orange)
                    VStack(alignment: .leading) {
                        Text("Owner")
                            .font(.custom("Aileron-Regular", size: 14))
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                        Text("Diana Muray")
                            .font(.custom("Aileron-Regular", size: 16))
                           
                    }
                    Spacer()
                    Button(action: {
                        // contact action
                    }) {
                        HStack {
                            Image(systemName: "message")
                            Text("Contact")
                                .font(.custom("Aileron-Regular", size: 18))
                            
                        }
                        .padding()
                        .background(Color(red: 0.85, green: 0.72, blue: 0.69))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    }
                }
                .padding(.horizontal)
                .padding(.top, 10)

                Spacer()
            }
            .padding()
            .navigationTitle("Pet Profile")
        }
        .padding(.leading, 12)
    }
}

struct PetDetailView: View {
    var title: String
    var detail: String

    var body: some View {
        VStack {
            Text(title)
                .font(.custom("Aileron-Regular", size: 16))
                .foregroundColor(.gray)
            Text(detail)
                .font(.custom("Aileron-Regular", size: 18))
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 1)
    }
}

struct PetProfile1_Previews: PreviewProvider {
    static var previews: some View {
        PetProfile1(pet: ColumnData(imageName: "kitty", text: "Luna", gender: "Female", age: "1y 4m", favorites: "heart.fill", adopt: "Adopt"))
    }
}
