//
//  ParentView.swift
//  TotalityDemo
//
//  Created by Sahil Satralkar on 22/11/21.
//

import SwiftUI

enum SheetScreen {
    case screen3, screen4, screen5
}
enum SheetScreenHalf {
    case screen1, screen2, screen3
}

struct ParentView: View {
    @State var selection : Int? = nil
    
    @EnvironmentObject var selectedScreen: ScreenEnvironment
    
    var body: some View {
        if selectedScreen.screenState == false {
            Screen1()
        } else {
            Screen2()
        }
    }
}

struct ParentView_Previews: PreviewProvider {
    static var previews: some View {
        ParentView()
    }
}
