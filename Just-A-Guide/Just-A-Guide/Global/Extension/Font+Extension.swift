//
//  Font+Extension.swift
//  Just-A-Guide
//
//  Created by SHIN YOON AH on 2022/05/02.
//

import Foundation
import SwiftUI

import UIKit

enum AppFontName: String {
    case regular = "NotoSans-Regular"
    case semiBold = "NotoSans-SemiBold"
    case bold = "NotoSans-Bold"
    case sansationLight = "Sansation-Light"
}

extension Font {
    init(uiFont: UIFont) {
        self = Font(uiFont as CTFont)
    }
}

extension UIFont {
    static func font(_ style: AppFontName, ofSize size: CGFloat) -> UIFont {
        return UIFont(name: style.rawValue, size: size)!
    }
}
