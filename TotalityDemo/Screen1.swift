//
//  Screen1.swift
//  TotalityDemo
//
//  Created by Sahil Satralkar on 23/11/21.
//

import SwiftUI

struct LogoView : View {
    var body : some View {
        Rectangle()
            .fill(Constants.Screen1.logoColor)
            .frame(width: 100, height: 100)
            .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}
struct ButtonView: View {
    var body: some View {
        Rectangle()
            .frame(width: 320, height: 80)
            .foregroundColor(Constants.Screen1.buttonColor2)
            .clipShape(RoundedRectangle(cornerRadius: 40))
    }
}

struct RectangleView : View {
    var body: some View {
        Rectangle()
            .frame(width: 350
                   , height: 520 )
            .foregroundColor(Constants.Screen1.backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: 40))
            .padding()
    }
}

struct Screen1: View {
    @EnvironmentObject var selectedScreen: ScreenEnvironment
    var body: some View {
        VStack {
            Text("PLAY")
                .font(.title3)
                .fontWeight(.medium)
                .foregroundColor(Constants.Screen1.textColor)
                .padding(.top, 15)
            ZStack {
                RectangleView()
                VStack {
                    LogoView()
                        .offset(x: -100, y: -130)
                    ButtonView()
                        .offset(y: 140)
                }
            }
            ZStack{
                
                Rectangle()
                    .frame(width: 340
                           , height: 200 )
                    .foregroundColor(Constants.Screen1.backgroundColor)
                    .clipShape(RoundedRectangle(cornerRadius: 40))
                Rectangle()
                    .frame(width: 350
                           , height: 100 )
                    .foregroundColor(.white)
                    .offset( y: 80)
            }
            
        }.onTapGesture {
            selectedScreen.screenState = true
        }
        
    }
}

struct Screen1_Previews: PreviewProvider {
    static var previews: some View {
        Screen1()
    }
}
