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
            Image(systemName: mappin.circle)
            VStack {
                Text("Your Location")
            }
        }
    }
}

#Preview {
    home_1()
}
