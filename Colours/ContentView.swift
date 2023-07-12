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
    
    var body: some View {
        VStack (spacing: 20) {
            Text("Match this Colour").font(.largeTitle).bold()
            HStack {
                Circle().padding()
                Circle().padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
