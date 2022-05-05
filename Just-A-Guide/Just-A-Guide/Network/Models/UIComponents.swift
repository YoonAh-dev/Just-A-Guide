//
//  UIComponents.swift
//  Just-A-Guide
//
//  Created by SHIN YOON AH on 2022/05/04.
//

import SwiftUI

enum UIComponent: String, CaseIterable {
    case button = "Button"
    case image = "Image"
    case `switch` = "Switch"
    case alert = "Alert"
    case text = "Text"
    case segmentControl = "Segment Control"
    case slider = "Slider"
    case stepper = "Stepper"
    case progressBar = "Progress Bar"
    case pageControl = "Page Control"
    case textField = "TextField"
}

let uiComponents: [UIComponent] = UIComponent.allCases
