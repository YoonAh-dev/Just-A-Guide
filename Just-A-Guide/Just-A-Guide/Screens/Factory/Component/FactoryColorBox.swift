//
//  FactoryColorBox.swift
//  Just-A-Guide
//
//  Created by SHIN YOON AH on 2022/05/06.
//

import SwiftUI

struct FactoryColorBox: View {
    
    // MARK: - property
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Colors")
                .font(.init(uiFont: .font(.regular, ofSize: 17)))
                .foregroundColor(.gray200)
            
            HStack(alignment: .center, spacing: 12) {
                ForEach(0..<4) { _ in
                    Rectangle()
                        .foregroundColor(.primary)
                        .frame(width: 67, height: 64)
                        .cornerRadius(10)
                }
            }
            .padding(.leading, 15)
        }
    }
}

struct FactoryColorBox_Previews: PreviewProvider {
    static var previews: some View {
        FactoryColorBox()
    }
}
