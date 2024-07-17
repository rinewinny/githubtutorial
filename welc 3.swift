//
//  welc 3.swift
//  github
//
//  Created by Anne Pham on 7/16/24.
//

import SwiftUI

struct welc_3: View {
    var body: some View {
        VStack {
            NavigationStack {
            Text("are you ready to begin your journey?")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.101, saturation: 0.506, brightness: 0.764))
                NavigationLink(destination: home_1()){
                    Text("begin")
                        .padding(5)
                        .foregroundColor(.white)
                        .background(.mint)
                        .cornerRadius(7)
                }
        }
    }
}
    }


#Preview {
    welc_3()
}
