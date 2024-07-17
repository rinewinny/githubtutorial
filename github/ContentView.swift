//
//  ContentView.swift
//  github
//
//  Created by Anne Pham on 7/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
            
        NavigationStack {
            ZStack{ Image("cat1 1")
                    .resizable()
                    .ignoresSafeArea()
                VStack{
                    Text("Welcome to")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.101, saturation: 0.506, brightness: 0.764))
                    Text("Pawsitively Yours")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(hue: 0.101, saturation: 0.506, brightness: 0.764))
                    
                    NavigationLink(destination: welc_2()) {
                        Text("begin")
                            .padding(6)
                            .foregroundColor(Color(red: 0.808, green: 0.71, blue: 0.572))
                            .background(Color(red:0.97647058823, green:0.97647058823, blue: 0.88235294117))
                            .cornerRadius(7)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
