//
//  ContentView.swift
//  Just-A-Guide
//
//  Created by SHIN YOON AH on 2022/05/02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello")
            .font(Font(uiFont: .font(.sansationLight, ofSize: 30)))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
