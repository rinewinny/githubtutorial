//
//  SwiftUIView.swift
//  github
//
//  Created by Anne Pham on 7/19/24.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            //.font(.custom("Migra-Extralight", size: 10))
    }
        init() {
            for familyName in UIFont.familyNames {
                print(familyName)
                
                for fontName in UIFont.fontNames(forFamilyName:familyName) {
                    print("-- \(fontName)")
                }
            }
    }
}

#Preview {
    SwiftUIView()
}
