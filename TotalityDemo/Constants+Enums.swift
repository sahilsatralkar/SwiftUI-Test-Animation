//
//  Constants.swift
//  TotalityDemo
//
//  Created by Sahil Satralkar on 23/11/21.
//

import SwiftUI

struct Constants {
    struct Common {
        static let grayBackground = Color(red: 212/255, green: 212/255, blue: 212/255)
        static let textColor = Color(red: 78/255, green: 78/255, blue: 78/255)
    }
    
    struct Screen1 {
        static let logoColor = Color(red: 247/255, green: 233/255, blue: 96/255)
        static let buttonColor = Color(red: 247/255, green: 233/255, blue: 96/255)
        static let backgroundColor = Color(red: 239/255, green: 136/255, blue: 66/255)
        static let textColor = Color(red: 66/255, green: 66/255, blue: 66/255)
        static let buttonColor2 = Color(red: 142/255, green: 209/255, blue: 76/255)
    }
    
    struct Button {
        static let color1 = Color(red: 246/255, green: 230/255, blue: 85/255)
        static let color2 = Color(red: 142/255, green: 209/255, blue: 76/255)
        static let color3 = Color(red: 219/255, green: 241/255, blue: 193/255)
        static let color4 = Color(red: 130/255, green: 172/255, blue: 227/255)
        static let color5 = Color(red: 104/255, green: 153/255, blue: 223/255)
    }
}

enum SheetScreen {
    case screen3, screen4, screen5
}
enum SheetScreenHalf {
    case screen1, screen2, screen3
}
enum ButtonStates {
    case first, second, third, fourth
}
