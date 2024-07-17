//
//  home 1.swift
//  github
//
//  Created by Anne Pham on 7/16/24.
//

import SwiftUI

struct home_1: View {
   
    var body: some View {
        
        HStack {
            
            Image("location")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .padding(.all)
                .frame(width: 50.0, height: 50.0).background(.mint)
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
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }
            }
            Spacer()
            Image("notification")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .padding(.all)
                .frame(width: 50.0, height: 50.0).background(.mint)
                .cornerRadius(8)
        }
    }
            }
    #Preview {
        home_1()
    }
