//
//  FactoryToolbar.swift
//  Just-A-Guide
//
//  Created by SHIN YOON AH on 2022/05/03.
//

import SwiftUI

struct FactoryToolbar: ToolbarContent {
    
    // MARK: - property
    
    @AppStorage("selectedAppearance") var selectedAppearance = 0
    @Binding var selectedComponentIndex: Int
    
    var utilities = Utilities()
    
    var body: some ToolbarContent {
        ToolbarItem(placement: .navigationBarLeading) {
            componentMenu
        }
        
        ToolbarItemGroup(placement: .navigationBarTrailing) {
            apparanceModeButton
            moreMenu
        }
        
        
        ToolbarItemGroup(placement: .bottomBar) {
            saveComponentButton
                .padding(.leading, -10)
            putOnCanvasButton
                .padding(.trailing, -10)
        }
    }
}

// MARK: - UI Components
extension FactoryToolbar {
    private var componentMenuButton: some View {
        HStack {
            Text(uiComponents[$selectedComponentIndex.wrappedValue].rawValue)
                .font(.init(uiFont: .font(.bold, ofSize: 27)))
                .foregroundColor(.primary)
            ImageLiteral.iconDownArrow
                .foregroundColor(.gray700)
                .padding(.leading, -10)
                .padding(.bottom, -7)
        }
    }
    
    private var apparanceModeButton: some View {
        Button(action: {
            selectedAppearance = (selectedAppearance == 1) ? 2 : 1
        }, label: {
            Image(systemName: (selectedAppearance == 1) ? "moon.fill" : "sun.max.fill")
                .foregroundColor(.gray600)
        })
        .onChange(of: selectedAppearance, perform: { value in
            utilities.overrideDisplayMode()
        })
    }
    
    private var moreButton: some View {
        Image(systemName: "ellipsis.circle")
            .foregroundColor(.gray600)
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
    
    private var factoryFunctionSection: some View {
        Section {
            Button {} label: {
                Label("Copy Code", image: "iconSquarebrackets")
                    .imageScale(.large)
            }
            
            Button {} label: {
                Label("Make View Modifier", image: "iconViewModifier")
            }
            
            Button {} label: {
                Label("Component Lists", image: "iconSave")
            }
            
            Button {} label: {
                Label("Canvas", image: "iconAddComponent")
            }
        }
    }
    
    private var webViewSection: some View {
        Section {
            Button("Human Interface Guidelines", action: {})
        }
    }
    
    private var componentMenu: some View {
        Menu {
            Picker(selection: $selectedComponentIndex, content: {
                ForEach(uiComponents.indices, id: \.self, content: { id in
                    Text("\(uiComponents[id].rawValue)").tag(id)
                })
            }, label: {
                Text("select UI Component")
            })
        } label: {
            componentMenuButton
        }
    }
    
    private var moreMenu: some View {
        Menu {
            factoryFunctionSection
            webViewSection
        } label: {
            moreButton
        }
    }
}
