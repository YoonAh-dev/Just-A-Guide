//
//  FactoryToolbar.swift
//  Just-A-Guide
//
//  Created by SHIN YOON AH on 2022/05/03.
//

import SwiftUI

struct FactoryToolbar: ToolbarContent {
    var body: some ToolbarContent {
        ToolbarItem(placement: .navigationBarLeading) {
            componentMenuButton
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
    
    private var apparanceModeButton: some View {
        Button(action: {
            print("Change Apparance Mode ")
        }, label: {
            Image(systemName: "sun.max.fill")
                .foregroundColor(.gray006)
        })
    }
    
    private var moreButton: some View {
        Button(action: {
            print("Show more menus")
        }, label: {
            Image(systemName: "ellipsis.circle")
                .foregroundColor(.gray006)
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
