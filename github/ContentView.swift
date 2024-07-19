//
//  ContentView.swift
//  github
//
//  Created by Anne Pham on 7/12/24.
//

import SwiftUI

struct StrokedText: View {
    var text: String
    var font: Font
    var strokeColor: Color
    var fillColor: Color
    var lineWidth: CGFloat

    var body: some View {
        ZStack {
            Text(text)
                .font(font)
                .foregroundColor(strokeColor)
                .offset(x: lineWidth, y: lineWidth)
                .overlay(
                    Text(text)
                        .font(font)
                        .foregroundColor(strokeColor)
                        .offset(x: -lineWidth, y: -lineWidth)
                )
                .overlay(
                    Text(text)
                        .font(font)
                        .foregroundColor(strokeColor)
                        .offset(x: -lineWidth, y: lineWidth)
                )
                .overlay(
                    Text(text)
                        .font(font)
                        .foregroundColor(strokeColor)
                        .offset(x: lineWidth, y: -lineWidth)
                )
            Text(text)
                .font(font)
                .foregroundColor(fillColor)
        }
    }
}

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("0dd4089f902d8e06a1f3348865e3f985")
                    .resizable()
                    .ignoresSafeArea()

                VStack {
                    StrokedText(
                        text: "welcome to",
                        font: .custom("Aileron-Regular", size: 19),
                        strokeColor: Color.black,
                        fillColor: Color(hue: 0.101, saturation: 0.506, brightness: 0.764),
                        lineWidth: 0

                    )
                    .padding(.bottom, 10.0)
                    
                    StrokedText(
                        text: "Pawsitively",
                        font: .custom("MigraItalic-ExtraboldItalic", size: 55),
                        strokeColor: Color.white,
                        fillColor: Color(hue: 0.944, saturation: 0.728, brightness: 0.27),
                        lineWidth: 1
                    )
                    
                    StrokedText(
                        text: "Yours",
                        font: .custom("MigraItalic-ExtraboldItalic", size: 55),
                        strokeColor: Color.white,
                        fillColor: Color(hue: 0.944, saturation: 0.626, brightness: 0.741),
                        lineWidth: 1
                    )
                    .padding(.top, -50.0)

                    NavigationLink(destination: welc_2()) {
                        StrokedText(
                            text: "begin",
                            font: .custom("MigraItalic-ExtraboldItalic", size: 26),
                            strokeColor: Color.clear,
                            fillColor: Color(red: 0.808, green: 0.71, blue: 0.572),
                            lineWidth: 1
                        )
                        .padding(10)
                        .background(Color(red: 0.453, green: 0.418, blue: 0.376))
                        .cornerRadius(8)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
