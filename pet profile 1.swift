//
//  pet profile 1.swift
//  github
//
//  Created by Anne Pham on 7/17/24.
//

import SwiftUI

struct pet_profile_1: View {
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

    }
}

#Preview {
    pet_profile_1()
}
