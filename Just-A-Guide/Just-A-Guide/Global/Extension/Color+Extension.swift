//
//  Color+Extension.swift
//  Just-A-Guide
//
//  Created by SHIN YOON AH on 2022/05/02.
//

import SwiftUI

extension Color {
    static var gray001: Color {
        return Color(hex: "#F3F3F3")
    }
    
    static var gray002: Color {
        return Color(hex: "#868686")
    }
    
    static var gray003: Color {
        return Color(hex: "#949494")
    }
    
    static var gray004: Color {
        return Color(hex: "#DADADA")
    }
    
    static var gray005: Color {
        return Color(hex: "#4B4B4B")
    }
    
    static var mainPurple: Color {
        return Color(hex: "#8D8EE8")
    }
    
    static var lightPurple: Color {
        return Color(hex: "#DFE3F8")
    }
        
    static var subPurple: Color {
        return Color(hex: "#BAC4F9")
    }
    
    static var darkPurple: Color {
        return Color(hex: "#878BE2")
    }
}

extension Color {
    init(hex: String) {
        var hexFormatted: String = hex.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()
        
        if hexFormatted.hasPrefix("#") {
            hexFormatted = String(hexFormatted.dropFirst())
        }
        
        assert(hexFormatted.count == 6, "Invalid hex code used.")
        var rgbValue: UInt64 = 0
        Scanner(string: hexFormatted).scanHexInt64(&rgbValue)
        
        self.init(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                  green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                  blue: CGFloat(rgbValue & 0x0000FF) / 255.0)
    }
}