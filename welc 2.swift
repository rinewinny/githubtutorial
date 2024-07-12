//
//  welc 2.swift
//  github
//
//  Created by Anne Pham on 7/16/24.
//

import SwiftUI

struct welc_2: View {
    var body: some View {
            VStack {
                NavigationStack {
                Text("find your purrfect pet today!")
                    
                    NavigationLink(destination:welc_3()){
                        Text("next")
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
    welc_2()
}
