//
//  FactoryTextFieldBox.swift
//  Just-A-Guide
//
//  Created by SHIN YOON AH on 2022/05/06.
//

import SwiftUI

struct FactoryTextFieldBox: View {
    
    // MARK: - property
    
    @State private var typedText: String = "Text"
    @State private var cornerRadius: CGFloat = 10.0
    @State private var strokeColor: Color = .darkPurple
    @State private var lineWidth: CGFloat = 1.0
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Text")
                .font(.init(uiFont: .font(.regular, ofSize: 17)))
                .foregroundColor(.gray200)
            
            TextField("Text", text: $typedText)
                .background(Color.white)
                .textFieldStyle(FactoryTextFieldStyle(cornerRadius: $cornerRadius,
                                                      strokeColor: $strokeColor,
                                                      lineWidth: $lineWidth))
                .tint(.darkPurple)
                .foregroundColor(.black)
                .cornerRadius(10)
                .onTapGesture {
                    print("button is clicked")
                }
        }
    }
}

struct FactoryTextFieldBox_Previews: PreviewProvider {
    static var previews: some View {
        FactoryTextFieldBox()
    }
}
