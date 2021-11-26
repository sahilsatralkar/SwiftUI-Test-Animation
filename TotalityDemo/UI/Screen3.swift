//
//  Screen3.swift
//  TotalityDemo
//
//  Created by Sahil Satralkar on 23/11/21.
//

import SwiftUI

struct Screen3: View {
    
    @EnvironmentObject var selectedScreen: ScreenEnvironment
    
    var screen3Mode : Screen3Mode = .half
    
    private func calculateOffset() -> CGFloat {
        switch screen3Mode {
        case .none:
            return 0
        case .half:
            return UIScreen.main.bounds.height - 350
        }
    }
    
    var body: some View {
        VStack {
            switch selectedScreen.halfSheetScreen {
            case .screen1 :
                FirstHalfScreenView()
            case .screen2 :
                SecondHalfScreenView()
            case .screen3 :
                ThirdHalfScreenView()
            }
            Button {
                if selectedScreen.halfSheetScreen == .screen1 {
                    self.selectedScreen.halfSheetScreen = .screen2
                }
                else if selectedScreen.halfSheetScreen == .screen2 {
                    self.selectedScreen.halfSheetScreen = .screen3
                }
            } label: {
                //
            }
            Spacer()
        }
        
        .offset(y: 40)
        .animation(.spring())
        .edgesIgnoringSafeArea(.all)
        .clipShape(Rectangle())
        .opacity(1)
    }
}

struct FirstHalfScreenView : View {
    @EnvironmentObject var selectedScreen: ScreenEnvironment
    @State private var view1Show = false
    
    var body : some View {
        VStack{
            HStack{
                Rectangle()
                    .foregroundColor(Constants.Common.grayBackground)
                    .frame(width: 150, height: 30)
                    .clipShape(RoundedRectangle(cornerRadius: 3))
                    .scaleEffect(self.selectedScreen.isHalfSheetNav ? 1 : 0)
                    .animation(Animation.linear(duration: 4).delay(2),value: 1 )
            }
            HStack (spacing: 30){
                VStack{
                    Circle()
                        .foregroundColor(Constants.Common.grayBackground)
                        .frame(width:80, height: 80)
                        .padding(.bottom)
                    Rectangle()
                        .foregroundColor(Constants.Common.grayBackground)
                        .frame(width:120, height: 20)
                        .clipShape(RoundedRectangle(cornerRadius: 3))
                    Rectangle()
                        .foregroundColor(Constants.Common.grayBackground)
                        .frame(width:80, height: 20)
                        .clipShape(RoundedRectangle(cornerRadius: 3))
                }
                VStack {
                    Circle()
                        .foregroundColor(Constants.Common.grayBackground)
                        .frame(width:80, height: 80)
                        .padding(.bottom)
                    Rectangle()
                        .foregroundColor(Constants.Common.grayBackground)
                        .frame(width:120, height: 20)
                        .clipShape(RoundedRectangle(cornerRadius: 3))
                    Rectangle()
                        .foregroundColor(Constants.Common.grayBackground)
                        .frame(width:80, height: 20)
                        .clipShape(RoundedRectangle(cornerRadius: 3))
                }
            }.padding().padding(.top)
                .offset( x: self.selectedScreen.isHalfSheetNav ? 0 : 500)
                .animation(Animation.easeInOut(duration: 1), value: 1)
            Button {
                if selectedScreen.halfSheetScreen == .screen1 {
                    self.selectedScreen.halfSheetScreen = .screen2
                    Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { _ in
                        selectedScreen.isHalfSheetNav2 = true
                    }
                }
                else if selectedScreen.halfSheetScreen == .screen2 {
                    self.selectedScreen.halfSheetScreen = .screen3
                }
            } label: {
                ZStack{
                    Rectangle()
                        .fill(.yellow)
                        .frame(width: 320, height: 60)
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                    Text("NEXT")
                        .foregroundColor(.white)
                        .font(.body)
                }.padding(.top)
            }
        }
        .frame(height: 320)
    }
}

struct SecondHalfScreenView : View {
    @EnvironmentObject var selectedScreen: ScreenEnvironment
    var body : some View {
        VStack {
            VStack {
                Rectangle()
                    .foregroundColor(Constants.Common.grayBackground).frame(width: 160, height: 30)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .padding()
                Rectangle()
                    .foregroundColor(Constants.Common.grayBackground).frame(width: 120, height: 20)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .scaleEffect(self.selectedScreen.isHalfSheetNav2 ? 1 : 0)
                    .animation(Animation.easeInOut(duration: 1), value: 1)
            }
            HStack(spacing : 30 ){
                ZStack{
                    Circle()
                        .fill(.yellow)
                        .frame(width: 60, height: 60)
                    Text("5")
                        .foregroundColor(.white)
                }
                ZStack{
                    Circle()
                        .foregroundColor(Constants.Common.grayBackground) .frame(width: 60, height: 60)
                    Text("10")
                        .foregroundColor(.white)
                }
                ZStack{
                    Circle()
                        .foregroundColor(Constants.Common.grayBackground)    .frame(width: 60, height: 60)
                    Text("15")
                        .foregroundColor(.white)
                }
            }.padding(.top)
                .offset( x: self.selectedScreen.isHalfSheetNav2 ? 0 : 500)
                .animation(Animation.easeInOut(duration: 1), value: 1)
            HStack {
                Text("Wallet Balance:")
                    .foregroundColor(Constants.Common.textColor)
                    .padding(.leading)
                Rectangle()
                    .foregroundColor(Constants.Common.grayBackground)
                    .frame(width: 50, height: 20)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                Spacer()
                Rectangle()
                    .foregroundColor(Constants.Common.grayBackground)
                    .frame(width: 30, height: 20)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                Rectangle()
                    .foregroundColor(Constants.Common.grayBackground)
                    .frame(width: 20, height: 20)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .padding(.trailing)
            }.padding().padding(.top)
            Button {
                if selectedScreen.halfSheetScreen == .screen1 {
                    self.selectedScreen.halfSheetScreen = .screen2
                }
                else if selectedScreen.halfSheetScreen == .screen2 {
                    self.selectedScreen.halfSheetScreen = .screen3
                    Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { _ in
                        selectedScreen.isHalfSheetNav3 = true
                    }
                }
            } label: {
                ZStack{
                    Rectangle()
                        .fill(.yellow)
                        .frame(width: 320, height: 60)
                        .clipShape(RoundedRectangle(cornerRadius: 30))
                    Text("NEXT")
                        .foregroundColor(.white)
                        .font(.body)
                }.padding()
            }
        }
        .frame(height: 320)
    }
}

struct ThirdHalfScreenView : View {
    @EnvironmentObject var selectedScreen: ScreenEnvironment
    var body : some View {
        VStack {
            VStack {
                Text("Ready To Play?")
                    .foregroundColor(Constants.Common.textColor)
                    .font(.title2)
                    .frame(height: 20)
                    .padding(.bottom)
                Text("OSWALD")
                    .foregroundColor(Constants.Common.textColor)
                    .font(.title)
                    .frame(height: 20)
                    .padding(.bottom)
            }
            .scaleEffect(self.selectedScreen.isHalfSheetNav3 ? 1 : 0)
            .animation(Animation.easeInOut(duration: 0.6), value: 1)
            HStack {
                Rectangle()
                    .foregroundColor(Constants.Common.grayBackground)
                    .frame(width: 100, height: 20)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                Rectangle()
                    .foregroundColor(Constants.Common.grayBackground)
                    .frame(width: 40, height: 20)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
            }.padding(.bottom)
            HStack (spacing: 15){
                Rectangle()
                    .foregroundColor(Constants.Common.grayBackground)
                    .frame(width: 80, height: 60)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                Rectangle()
                    .foregroundColor(Constants.Common.grayBackground)
                    .frame(width: 80, height: 60)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                Rectangle()
                    .foregroundColor(Constants.Common.grayBackground)
                    .frame(width: 80, height: 60)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
            }
            .offset( x: self.selectedScreen.isHalfSheetNav3 ? 0 : 500)
            .animation(Animation.easeInOut(duration: 1), value: 1)
            HStack {
                Text("Wallet Balance:")
                    .padding(.leading)
                    .font(.system(size: 16))
                    .foregroundColor(Constants.Common.textColor)
                Rectangle()
                    .foregroundColor(Constants.Common.grayBackground)
                    .frame(width: 50, height: 20)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                Spacer()
                Rectangle()
                    .foregroundColor(Constants.Common.grayBackground)
                    .frame(width: 30, height: 20)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                Rectangle()
                    .foregroundColor(Constants.Common.grayBackground)
                    .frame(width: 10, height: 10)
                    .clipShape(RoundedRectangle(cornerRadius: 2))
                    .padding(.trailing)
            }.padding()
            ZStack{
                Rectangle()
                    .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                    .frame(width: 320, height: 60)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                Text("Confirm")
                    .foregroundColor(.white)
                    .font(.body)
            }.padding()
        }
        .frame(height: 320)
    }
}

struct Screen3_Previews: PreviewProvider {
    static var previews: some View {
        Screen3()
        
    }
}
