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
                        ZStack{ Image("cat1 1")
                                .resizable()
                                .ignoresSafeArea()
                            VStack {
                                Text("find your purrfect pet today!")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color(hue: 0.101, saturation: 0.506, brightness: 0.764))
                                NavigationLink(destination:welc_3()){
                                    Text("next")
                                        .padding(5)
                                        .foregroundColor(Color(red: 0.808, green: 0.71, blue: 0.572))
                                        .background(Color(red:0.97647058823, green:0.97647058823, blue: 0.88235294117))
                                        .cornerRadius(7)
                                }
                                HStack{
                                   
                                    Image("cat")
                                        .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(15)
                                    Image("dog")
                                        .resizable(resizingMode: .stretch)
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(15)
                                    
                                }
                            }
                            }
        }
    }
}

#Preview {
    welc_2()
}
