//
//  welc 2.swift
//  github
//
//  Created by Anne Pham on 7/16/24.
//

import SwiftUI

struct welc_2: View {
    var body: some View {
            
      
                NavigationStack {
                        ZStack{ 
                            Image("0dd4089f902d8e06a1f3348865e3f985")
                                .resizable()
                                .ignoresSafeArea()
                            VStack {
                                HStack{
                                   Spacer()
                                    Image("f995c1d9181aef325010f9c218ec52b7-removebg-preview (1)")
                                        .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                        .padding(.horizontal, 40.0)
                                        .padding(.top, -60)
                                }

                                Text("begin finding your")
                                    .font(.custom("Aileron-Bold", size: 19))
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(hue: 0.101, saturation: 0.506, brightness: 0.764))
                                Text("purrfect pet")
                                    .font(.custom("MigraItalic-ExtraboldItalic", size: 40))
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(hue: 0.101, saturation: 0.506, brightness: 0.764))
                                Text("today!") .
                                font(.custom("Aileron-Bold", size: 19))
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(hue: 0.101, saturation: 0.506, brightness: 0.764))
                                
                                NavigationLink(destination:welc_3()){
                                    Text("next")
                                        .font(.custom("MigraItalic-ExtraboldItalic", size: 30))
                                        .padding(5)
                                        .foregroundColor(Color(red: 0.808, green: 0.71, blue: 0.572))
                                        .background(Color(red:0.97647058823, green:0.97647058823, blue: 0.88235294117))
                                        .cornerRadius(7)
                                }
                                .padding(.top, 43.0)
                                
                            }
                            }
        }
    }
}

#Preview {
    welc_2()
}
