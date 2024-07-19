//
//  welc 3.swift
//  github
//
//  Created by Anne Pham on 7/16/24.
//

import SwiftUI

struct welc_3: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("0dd4089f902d8e06a1f3348865e3f985")
                    .resizable()
                    .ignoresSafeArea()

                VStack {
                    Text("are you ready")
                        .font(.custom("Aileron-Bold", size: 20))
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.101, saturation: 0.506, brightness: 0.764))
                    
                    Text("to begin your")
                        .font(.custom("Aileron-Bold", size: 20))
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.101, saturation: 0.506, brightness: 0.764))
                    
                    Text("pet journey?")
                        .font(.custom("MigraItalic-ExtraboldItalic", size: 40))
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.101, saturation: 0.506, brightness: 0.764))
                        .padding(.top, 10)

                    NavigationLink(destination: HomeView()) {
                        Text("go!")
                            .font(.custom("MigraItalic-ExtraboldItalic", size: 28))
                            .padding(8)
                            .foregroundColor(Color(red: 0.808, green: 0.71, blue: 0.572))
                            .background(Color(red: 0.453, green: 0.418, blue: 0.376))
                            .cornerRadius(7)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    welc_3()
}
