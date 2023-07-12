//
//  ContentView.swift
//  Colours
//
//  Created by jr on 12/07/2023.
//

import SwiftUI

struct ContentView: View {
    static func randomiser() -> Double {
        return Double.random(in: 0..<1)
    }
    
    @State var redActual = randomiser()
    @State var greenActual = randomiser()
    @State var blueActual = randomiser()
    
    @State var redSlider: Double
    @State var greenSlider: Double
    @State var blueSlider: Double
    
    var body: some View {
        VStack (spacing: 20) {
            Text("Match this Colour")
                .font(.largeTitle)
                .bold()
            HStack {
                Circle()
                    .fill(Color(red: redActual, green: greenActual, blue: blueActual))
                    .padding()
                Circle()
                    .padding()
            }
            
            Sliders(value: $redSlider, color: .red, textColor: "Red")
            Sliders(value: $greenSlider, color: .green, textColor: "Green")
            Sliders(value: $blueSlider, color: .blue, textColor: "Blue")
            
        }
    }
}

#Preview {
    ContentView(redSlider: 0.0, greenSlider: 0.0, blueSlider: 0.0)
}

struct Sliders: View {
    @Binding var value: Double
    var color: Color
    var textColor: String
    
    var body: some View {
        VStack {
            Text("\(textColor) (\(Int(value*256)))")
                .font(.largeTitle)
            Slider(value: $value)
                .accentColor(color)
                .padding()
        }
    }
}
