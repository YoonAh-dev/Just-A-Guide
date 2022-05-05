//
//  UIComponentAttributeView.swift
//  Just-A-Guide
//
//  Created by SHIN YOON AH on 2022/05/06.
//

import SwiftUI

struct UIComponentAttributeView: View {
    
    // MARK: - property
    
    @Binding var selectedComponent: Int
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                switch uiComponents[$selectedComponent.wrappedValue] {
                case .button:
                    Text("button")
                        .foregroundColor(.primary)
                        .padding(.vertical, 20)
                case .slider:
                    Text("slider")
                        .foregroundColor(.primary)
                case .image:
                    ImageLiteral.imgTree
                        .resizable()
                        .frame(width: 300, height: 200)
                        .scaledToFill()
                case .textField:
                    Text("textfield")
                        .foregroundColor(.primary)
                default:
                    Spacer()
                }
                
                Spacer()
            }
            .padding(.vertical, 30)
            .frame(maxWidth: .infinity)
        }
    }
}
