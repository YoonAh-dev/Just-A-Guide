//
//  FactoryView.swift
//  Just-A-Guide
//
//  Created by SHIN YOON AH on 2022/05/02.
//

import SwiftUI

struct FactoryView: View {
    
    // MARK: - property
    
    @State private var selectedComponentIndex: Int = 0
    
    var body: some View {
        ZStack {
            VStack {
                FactorySpace()
                    .frame(height: 184)
                FactoryAttributeView()
            }
        }
        .foregroundColor(.init(uiColor: .systemBackground))
        .toolbar {
            FactoryToolbar(selectedComponentIndex: $selectedComponentIndex)
        }
    }
}

extension FactoryView {
    
}

struct FactoryView_Previews: PreviewProvider {
    static var previews: some View {
        FactoryView()
    }
}
