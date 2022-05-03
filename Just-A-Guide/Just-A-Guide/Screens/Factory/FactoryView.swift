//
//  FactoryView.swift
//  Just-A-Guide
//
//  Created by SHIN YOON AH on 2022/05/02.
//

import SwiftUI

struct FactoryView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    componentMenuButton
                }
                
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    Button(action: {
                        print("hello")
                    }, label: {
                        Image(systemName: "circle.fill")
                    })
                    Button(action: {
                        print("hello")
                    }, label: {
                        Image(systemName: "circle.fill")
                    })
                }
            }
    }
}

extension FactoryView {
    var componentMenuButton: some View {
        Button(action: {
            print("Select Navigation Bar leading Button")
        }, label: {
            Text("Button")
                .font(.init(uiFont: .font(.bold, ofSize: 27)))
                .foregroundColor(.primary)
            ImageLiteral.iconDownArrow
                .foregroundColor(.gray007)
                .padding(.leading, -10)
                .padding(.bottom, -5)
        })
    }
}

struct FactoryView_Previews: PreviewProvider {
    static var previews: some View {
        FactoryView()
    }
}
