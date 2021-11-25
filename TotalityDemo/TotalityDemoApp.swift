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
    @Published var screenState : Bool = false
    @Published var sheetScreen : SheetScreen = .screen3
    @Published var sheetScreenHalf : SheetScreenHalf = .screen1
    @Published var isHalfSheetNav :Bool = false
}

 
