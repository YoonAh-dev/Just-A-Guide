//
//  FactoryAttributeView.swift
//  Just-A-Guide
//
//  Created by SHIN YOON AH on 2022/05/03.
//

import SwiftUI

struct FactoryAttributeView: View {
    
    // MARK: - property
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ZStack {
            (colorScheme == .light) ? Color.gray100 : Color.darkBackground
            
            addingAttributeButton
        }
        .border(.ultraThickMaterial, width: 1)
        .cornerRadius(20, corners: [.topLeft, .topRight])
        .ignoresSafeArea(.all)
    }
}

extension FactoryAttributeView {
    private var addingAttributeButton: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    print("present adding attribute view")
                }, label: {
                    Image(systemName: "plus.circle")
                        .foregroundColor(.gray600)
                        .imageScale(.large)
                })
                .padding()
            }
            
            Spacer()
        }
    }
}

struct FactoryAttributeView_Previews: PreviewProvider {
    static var previews: some View {
        FactoryAttributeView()
    }
}
