//
//  FactoryView.swift
//  Just-A-Guide
//
//  Created by SHIN YOON AH on 2022/05/02.
//

import SwiftUI

struct FactoryView: View {
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
            FactoryToolbar()
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
