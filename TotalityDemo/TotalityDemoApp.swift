//
//  TotalityDemoApp.swift
//  TotalityDemo
//
//  Created by Sahil Satralkar on 22/11/21.
//

import SwiftUI

@main
struct TotalityDemoApp: App {
    @StateObject private var screenState = ScreenEnvironment()
    var body: some Scene {
        WindowGroup {
            ParentView()
                .environmentObject(screenState)
        }
    }
}

class ScreenEnvironment : ObservableObject {
    @Published var initialScreenState : ScreenState = .screen1
    @Published var sheetScreen : SheetScreen = .screen3
    @Published var sheetScreenHalf : SheetScreenHalf = .screen1
    @Published var isHalfSheetNav :Bool = false
    @Published var isHalfSheetNav2 :Bool = false
    @Published var isHalfSheetNav3 :Bool = false
    @Published var buttonStates : ButtonStates = .first
}
