//
//  UIComponentSpacerView.swift
//  Just-A-Guide
//
//  Created by SHIN YOON AH on 2022/05/06.
//

import SwiftUI

struct UIComponentSpacerView: View {

    // MARK: - property
    
    @Binding var selectedComponent: Int
    @Binding var selectedBorderColor: Color
    
    @State private var celsius: Float = 0
    @State private var typedText = ""
    @State private var cornerRadius: CGFloat = 10.0
    @State private var strokeColor: Color = .primary
    @State private var lineWidth: CGFloat = 1.0

    var body: some View {
        VStack {
            switch uiComponents[$selectedComponent.wrappedValue] {
            case .button:
                Button(action: { }, label: {
                    Text("Text")
                })
                    .padding()
                    .foregroundColor(.primary)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke($selectedBorderColor.wrappedValue, lineWidth: 1)
                    )
            case .slider:
                Slider(value: $celsius, in: -100...100, step: 0.1)
                    .padding(.horizontal, 20)
                    .tint(.darkPurple)
            case .image:
                ImageLiteral.imgTree
                    .resizable()
                    .frame(width: 300, height: 200)
                    .scaledToFill()
            case .textField:
                TextField("Text", text: $typedText)
                    .foregroundColor(.primary)
                    .textFieldStyle(FactoryTextFieldStyle(cornerRadius: $cornerRadius,
                                                          strokeColor: $strokeColor,
                                                          lineWidth: $lineWidth))
                    .padding(.horizontal, 50)
            default:
                Spacer()
            }
            
            Spacer()
                .frame(height: 50)
        }
    }
}
