//
//  UIComponents.swift
//  Just-A-Guide
//
//  Created by SHIN YOON AH on 2022/05/04.
//

import SwiftUI

enum UIComponent: String, CaseIterable {
    case button = "Button"
    case image = "Image"
    case `switch` = "Switch"
    case alert = "Alert"
    case text = "Text"
    case segmentControl = "Segment Control"
    case slider = "Slider"
    case stepper = "Stepper"
    case progressBar = "Progress Bar"
    case pageControl = "Page Control"
    case textField = "TextField"
}

let uiComponents: [UIComponent] = UIComponent.allCases

struct UIComponentSwitchView: View {

    // MARK: - property
    
    @Binding var selectedComponent: Int
    @Binding var selectedBorderColor: Color
    
    @State var celsius: Float = 0

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
            default:
                Spacer()
            }
            
            Spacer()
                .frame(height: 50)
        }
    }
}
