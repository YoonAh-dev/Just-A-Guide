//
//  FactorySystemStyleCell.swift
//  Just-A-Guide
//
//  Created by SHIN YOON AH on 2022/05/06.
//

import SwiftUI

struct FactorySystemStyleCell: View {
    
    // MARK: - property
    
    var title: String
    var index: Int
    
    var body: some View {
        Text(title)
            .foregroundColor((index == 5) ? .white : .gray200)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke((index == 5) ? .clear : Color.gray300, lineWidth: 1)
                    .background((index == 5) ? Color.mainPurple : .clear)
                    .frame(width: 106, height: 38)
            )
            .padding()
            .onTapGesture {
                
            }
    }
}
