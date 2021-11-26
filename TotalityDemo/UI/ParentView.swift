//
//  ParentView.swift
//  TotalityDemo
//
//  Created by Sahil Satralkar on 22/11/21.
//

import SwiftUI

struct ParentView: View {
    
    @EnvironmentObject var selectedScreen: ScreenEnvironment
    
    var body: some View {
        switch selectedScreen.initialScreenState {
        case .screen1 :
            Screen1()
        case .screen2 :
            Screen2()
        }
    }
}

struct ParentView_Previews: PreviewProvider {
    static var previews: some View {
        ParentView()
    }
}
