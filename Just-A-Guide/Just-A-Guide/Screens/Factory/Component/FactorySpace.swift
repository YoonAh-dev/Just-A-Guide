//
//  FactorySpace.swift
//  Just-A-Guide
//
//  Created by SHIN YOON AH on 2022/05/03.
//

import SwiftUI

struct FactorySpace: View {
    
    // MARK: - property
    
    @Binding var selectedComponentIndex: Int
    @Binding var selectedBorderColor: Color
    
    var body: some View {
        ZStack {
            UIComponentSpacerView(selectedComponent: $selectedComponentIndex,
                                  selectedBorderColor: $selectedBorderColor)
        }
    }
}
