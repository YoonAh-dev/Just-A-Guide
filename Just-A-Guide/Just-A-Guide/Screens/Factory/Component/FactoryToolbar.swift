//
//  FactoryToolbar.swift
//  Just-A-Guide
//
//  Created by SHIN YOON AH on 2022/05/03.
//

import SwiftUI

struct FactoryToolbar: ToolbarContent {
    
    // MARK: - property
    
    @Binding var selectedComponentIndex: Int
    
    var body: some ToolbarContent {
        ToolbarItem(placement: .navigationBarLeading) {
            componentMenu
        }
        
        ToolbarItemGroup(placement: .navigationBarTrailing) {
            apparanceModeButton
            moreButton
        }
        
        ToolbarItemGroup(placement: .bottomBar) {
            saveComponentButton
                .padding(.leading, -10)
            putOnCanvasButton
                .padding(.trailing, -10)
        }
    }
}

extension FactoryToolbar {
    private var componentMenuButton: some View {
        HStack {
            Text(uiComponents[$selectedComponentIndex.wrappedValue])
                .font(.init(uiFont: .font(.bold, ofSize: 27)))
                .foregroundColor(.primary)
            ImageLiteral.iconDownArrow
                .foregroundColor(.gray700)
                .padding(.leading, -10)
                .padding(.bottom, -7)
        }
    }
    
    private var componentMenu: some View {
        Menu {
            Picker(selection: $selectedComponentIndex, content: {
                ForEach(uiComponents.indices, id: \.self, content: { id in
                    Text("\(uiComponents[id])").tag(id)
                })
            }, label: {
                Text("select UI Component")
            })
        } label: {
            componentMenuButton
        }
    }
    
    private var apparanceModeButton: some View {
        Button(action: {
            print("Change Apparance Mode ")
        }, label: {
            Image(systemName: "sun.max.fill")
                .foregroundColor(.gray600)
        })
    }
    
    private var moreButton: some View {
        Button(action: {
            print("Show more menus")
        }, label: {
            Image(systemName: "ellipsis.circle")
                .foregroundColor(.gray600)
        })
    }
    
    private var saveComponentButton: some View {
        Button(action: {
            print("Save Component")
        }, label: {
            Image(systemName: "square.and.arrow.down")
                .foregroundColor(.darkPurple)
            Text("Save Component")
                .foregroundColor(.darkPurple)
                .font(.system(size: 15))
        })
    }
    
    private var putOnCanvasButton: some View {
        Button(action: {
            print("your components are on canvas")
        }, label: {
            Text("Put on Canvas")
                .foregroundColor(.darkPurple)
                .font(.system(size: 15))
        })
    }
}
