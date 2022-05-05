//
//  FactorySystemStyleBox.swift
//  Just-A-Guide
//
//  Created by SHIN YOON AH on 2022/05/06.
//

import SwiftUI

struct FactorySystemStyleBox: View {
    
    private enum Size {
        static let width: Double = 106.0
    }
    
    private enum SystemStyle: String, CaseIterable {
        case plain = "Plain"
        case gray = "Gray"
        case tinted = "Tinted"
        case filled = "Filled"
    }
    
    // MARK: - property
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("System Type")
                .font(.init(uiFont: .font(.regular, ofSize: 17)))
                .foregroundColor(.gray200)
                .padding(.horizontal, 4)
            
            ScrollView(.horizontal) {
                HStack(spacing: 7) {
                    ForEach(0..<SystemStyle.allCases.count) { index in
                        FactorySystemStyleCell(title: SystemStyle.allCases[index].rawValue, index: index)
                            .frame(width: 106, height: 38)
                    }
                }

            }
            .contentShape(Rectangle())
            .clipped()
        }
    }
}

struct FactorySystemStyleBox_Previews: PreviewProvider {
    static var previews: some View {
        FactorySystemStyleBox()
    }
}
