//
//  ContentView.swift
//  Calculator-lazygrid
//
//  Created by Maximiliano París Gaete on 9/24/24.
//

import SwiftUI

enum CalculatorButtonType {
    case utility
    case computeButton
    case number
    case doubleWide
}
typealias ButtonSpec = (label: String, type: CalculatorButtonType)

let buttonSpecs: [ButtonSpec] = [
    ("AC", .utility),   ("±", .utility),    ("%", .utility),    ("/", .computeButton),
    ("7", .utility),    ("8", .utility),    ("9", .utility),    ("+", .computeButton),
    ("4", .utility),    ("5", .utility),    ("6", .utility),    ("-", .computeButton),
    ("1", .utility),    ("2", .utility),    ("3", .utility),    ("*", .computeButton),
    ("0", .utility),    ("", .utility),    (".", .utility),    ("=", .computeButton)
]

let gridItems = Array<GridItem>(repeating: .init(.fixed(50)), count: 4)

struct CalculatorView: View {
    var body: some View {
        VStack {
            Text("1000")
            LazyVGrid(columns: gridItems) {
                ForEach(buttonSpecs, id: \.label) { buttonSpec in
                    if buttonSpec.label == "" {
                        Text("")
                    } else {
                        CalculatorButton(buttonSpec: buttonSpec)
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    CalculatorView()
}
