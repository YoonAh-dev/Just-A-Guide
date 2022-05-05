//
//  FactorySpace.swift
//  Just-A-Guide
//
//  Created by SHIN YOON AH on 2022/05/03.
//

import SwiftUI

struct FactorySpace: View {
    
    // MARK: - property
    
    @Binding var selectedBorderColor: Color
    
    var body: some View {
        ZStack {
            VStack {
                Button(action: { }, label: {
                    Text("Text")
                })
                    .padding()
                    .foregroundColor(.primary)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke($selectedBorderColor.wrappedValue, lineWidth: 1)
                    )
                
                Spacer()
                    .frame(height: 50)
            }
        }
    }
}
