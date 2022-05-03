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
                FactoryToolbar()
            }
    }
}

extension FactoryView {

}

struct FactoryView_Previews: PreviewProvider {
    static var previews: some View {
        FactoryView()
    }
}
