//
//  SwiftUIView.swift
//  Calculator-lazygrid
//
//  Created by Maximiliano París Gaete on 9/24/24.
//

import SwiftUI

struct CalculatorButton: View {
    let buttonSpec: ButtonSpec
    var body: some View {
        Button {
            //TODO functionality
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.blue)
                Text(buttonSpec.label)
                    .font(.title)
                    .foregroundStyle(.white)
            }
        }
    }
}

