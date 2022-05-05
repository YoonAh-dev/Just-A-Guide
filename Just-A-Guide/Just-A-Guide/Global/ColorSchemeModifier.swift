//
//  ColorSchemeModifier.swift
//  Just-A-Guide
//
//  Created by SHIN YOON AH on 2022/05/05.
//

import SwiftUI

struct ColorSchemeModifier: ViewModifier {

    // MARK: - property
    
    @AppStorage("selectedAppearance") var selectedAppearance: Int = 0
    
    var colorScheme: ColorScheme

    // MARK: - func
    
    func body(content: Content) -> some View {
        if selectedAppearance == 2 {
            return content.preferredColorScheme(.dark)
        } else if selectedAppearance == 1 {
            return content.preferredColorScheme(.light)
        } else {
            return content.preferredColorScheme(colorScheme)
        }
    }
}

final class Utilities {

    // MARK: - property
    
    @AppStorage("selectedAppearance") var selectedAppearance = 0
    
    private var userInterfaceStyle: ColorScheme? = .dark

    // MARK: - func
    
    func overrideDisplayMode() {
        var userInterfaceStyle: UIUserInterfaceStyle

        if selectedAppearance == 2 {
            userInterfaceStyle = .dark
        } else if selectedAppearance == 1 {
            userInterfaceStyle = .light
        } else {
            userInterfaceStyle = .unspecified
        }
    
        UIApplication.shared.windows.first?.overrideUserInterfaceStyle = userInterfaceStyle
    }
}
