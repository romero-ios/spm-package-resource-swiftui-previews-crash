//
//  MyProjectApp.swift
//  MyProject
//
//  Created by Daniel Romero on 10/5/21.
//

import SwiftUI
import LibraryA

/*
 Running the actual app will render the image from LibraryB referenced in LibraryA in the iOS Simulator
 */
@main
struct MyProjectApp: App {
    var body: some Scene {
        WindowGroup {
            MyView()
        }
    }
}
