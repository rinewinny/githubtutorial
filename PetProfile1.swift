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
            Color(red:0.38431372549, green: 0.36078431372, blue: 0.34509803921)
                .ignoresSafeArea()
            VStack {
                Image("hi")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
            }
            .padding()
            .background(Rectangle()
                .foregroundColor(.white))
                    .cornerRadius(15)
                    .shadow(radius: 15)
            .padding()
        }
        VStack {

            Image(pet.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
                .cornerRadius(10)
                .padding()
            
            Text(pet.text)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top)
            
            HStack {
                Text("Gender: \(pet.gender)")
                Text("Age: \(pet.age)")
            }
            .font(.headline)
            .padding(.top)
            
            Text("This is \(pet.text), a wonderful \(pet.gender.lowercased()) who is \(pet.age) old.")
                .font(.body)
                .padding()
            
            Spacer()
        }
        .navigationTitle("Pet Profile")
        .padding()
    }
}

struct PetProfile1_Previews: PreviewProvider {
    static var previews: some View {
        PetProfile1(pet: ColumnData(imageName: "kitty", text: "Luna", gender: "Female", age: "1y 4m", favorites: "heart.fill", adopt: "Adopt"))
    }
}
