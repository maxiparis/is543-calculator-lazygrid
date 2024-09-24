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
    
    var foregroundColor: Color {
        self == .utility ? .black : .white
        
    }
    
    var backgroundColor: Color {
        switch self {
            case .utility:
                .utilityBackground
        case .computeButton:
                .computeBackground
        case .number, .doubleWide:
                .numberBackground
        }
    }
}

//why do I need this typealias?
typealias ButtonSpec = (label: String, type: CalculatorButtonType)

let buttonSpecs: [ButtonSpec] = [
    ("AC", .utility),   ("±", .utility),    ("%", .utility),    ("/", .computeButton),
    ("7", .number),    ("8", .number),    ("9", .number),    ("+", .computeButton),
    ("4", .number),    ("5", .number),    ("6", .number),    ("-", .computeButton),
    ("1", .number),    ("2", .number),    ("3", .number),    ("*", .computeButton),
    ("0", .number),    ("", .utility),    (".", .utility),    ("=", .computeButton)
]

//Why do I need this variable?
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
