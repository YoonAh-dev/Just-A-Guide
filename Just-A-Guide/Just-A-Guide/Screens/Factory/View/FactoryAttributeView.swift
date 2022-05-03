//
//  FactoryAttributeView.swift
//  Just-A-Guide
//
//  Created by SHIN YOON AH on 2022/05/03.
//

import SwiftUI

struct FactoryAttributeView: View {
    var body: some View {
        ZStack {
            Color.gray100
        }
        .border(.ultraThinMaterial, width: 1)
        .cornerRadius(20, corners: [.topLeft, .topRight])
        .ignoresSafeArea(.all)
    }
}

extension FactoryAttributeView {

}

struct FactoryAttributeView_Previews: PreviewProvider {
    static var previews: some View {
        FactoryAttributeView()
    }
}
