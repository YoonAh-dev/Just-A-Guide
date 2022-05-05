//
//  FactoryTextfieldStyle.swift
//  Just-A-Guide
//
//  Created by SHIN YOON AH on 2022/05/06.
//

import SwiftUI

struct FactoryTextFieldStyle: TextFieldStyle {
    
    // MARK: - property
    
    @Binding var cornerRadius: CGFloat
    @Binding var strokeColor: Color
    @Binding var lineWidth: CGFloat
    
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(.horizontal, 10)
            .padding(.vertical, 15)
            .background(
                RoundedRectangle(cornerRadius: $cornerRadius.wrappedValue, style: .continuous)
                    .stroke($strokeColor.wrappedValue, lineWidth: $lineWidth.wrappedValue)
            )
    }
}
