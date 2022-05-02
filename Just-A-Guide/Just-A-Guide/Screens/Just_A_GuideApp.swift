//
//  Just_A_GuideApp.swift
//  Just-A-Guide
//
//  Created by SHIN YOON AH on 2022/05/02.
//

import SwiftUI

@main
struct Just_A_GuideApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
