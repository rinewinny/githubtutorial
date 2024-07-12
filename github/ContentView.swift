//
//  ContentView.swift
//  github
//
//  Created by Anne Pham on 7/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
           
            NavigationStack {
                Text("welcome to")
                Text("pawsitively yours")
                
                NavigationLink(destination: welc_2()) {
                    Text("begin")
                        .padding(6)
                        .foregroundColor(.white)
                        .background(.mint)
                        .cornerRadius(7)
                }
              
            }
        }
    }
}

#Preview {
    ContentView()
}
