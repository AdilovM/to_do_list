//
//  To_Do_ListApp.swift
//  To Do List
//
//  Created by Miras Adilov on 8/10/23.
//

import SwiftUI
import FirebaseCore



@main
struct To_Do_ListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
