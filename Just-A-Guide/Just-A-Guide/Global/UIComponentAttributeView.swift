//
//  UIComponentAttributeView.swift
//  Just-A-Guide
//
//  Created by SHIN YOON AH on 2022/05/06.
//

import SwiftUI

struct UIComponentAttributeView: View {
    
    // MARK: - property
    
    @Binding var selectedComponent: Int
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                switch uiComponents[$selectedComponent.wrappedValue] {
                case .button:
                    FactoryTextFieldBox()
                        .padding(.horizontal, 25)
                        .padding(.bottom, 29)
                    Divider()
                    FactorySystemStyleBox()
                        .padding(.top, 20)
                        .padding(.horizontal, 20)
                        .padding(.bottom, 29)
                    Divider()
                    FactoryColorBox()
                        .padding(.top, 20)
                        .padding(.leading, 30)
                case .slider:
                    FactoryColorBox()
                        .padding(.horizontal, 25)
                        .padding(.trailing, 5)
                case .image:
                    Spacer()
                case .textField:
                    FactoryTextFieldBox()
                        .padding(.horizontal, 25)
                        .padding(.bottom, 29)
                    Divider()
                    FactoryColorBox()
                        .padding(.top, 20)
                        .padding(.leading, 30)
                default:
                    Spacer()
                }
                
                Spacer()
            }
            .padding(.top, 40)
            .frame(maxWidth: .infinity)
        }
    }
}
