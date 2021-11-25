//
//  Screen3.swift
//  TotalityDemo
//
//  Created by Sahil Satralkar on 23/11/21.
//

import SwiftUI

enum Screen3Mode {
    case none
    case quarter
}

struct Screen3: View {
    
    @EnvironmentObject var selectedScreen: ScreenEnvironment
    
    var screen3Mode : Screen3Mode = .quarter
    
    @State private var showScreen4 = false
    
    private func calculateOffset() -> CGFloat {
        switch screen3Mode {
        case .none:
            return 0
        case .quarter:
            return UIScreen.main.bounds.height - 350
        }
    }
    
    var body: some View {
        VStack {
            if selectedScreen.sheetScreenHalf == .screen1 {
                View1()
                //View2()
            }
            else if selectedScreen.sheetScreenHalf == .screen2 {
                View2()
                //View1()
            }
            else if selectedScreen.sheetScreenHalf == .screen3 {
                View3()
                //View1()
            }
            
            
            Button {
                if selectedScreen.sheetScreenHalf == .screen1 {
                    print("@@@")
                    self.selectedScreen.sheetScreenHalf = .screen2
                }
                else if selectedScreen.sheetScreenHalf == .screen2 {
                    print("$$$")
                    self.selectedScreen.sheetScreenHalf = .screen3
                }
                
                
                
            } label: {
//                ZStack{
//                    Rectangle()
//                        .fill(.yellow)
//                        .frame(width: 320, height: 80)
//                        .clipShape(RoundedRectangle(cornerRadius: 40))
//                    Text("NEXT")
//                        .foregroundColor(.white)
//                        .font(.body)
//                }.padding()
            }
            
            
            Spacer()
        }
        
        .offset(y: 40)
        .animation(.spring())
        .edgesIgnoringSafeArea(.all)
        //.frame(height: 350)
        .clipShape(Rectangle())
        .opacity(1)
        //.background(.white)
    }
}



struct View1 : View {
    @EnvironmentObject var selectedScreen: ScreenEnvironment
    var body : some View {
        
            VStack{
                HStack{
                    Rectangle()
                        .foregroundColor(Constants.Common.grayBackground)
                        .frame(width: 150, height: 30)
                        .clipShape(RoundedRectangle(cornerRadius: 3))
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
                }.padding()
                Button {
                    if selectedScreen.sheetScreenHalf == .screen1 {
                        print("@@@")
                        self.selectedScreen.sheetScreenHalf = .screen2
                    }
                    else if selectedScreen.sheetScreenHalf == .screen2 {
                        print("$$$")
                        self.selectedScreen.sheetScreenHalf = .screen3
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

struct View2 : View {
    @EnvironmentObject var selectedScreen: ScreenEnvironment
    var body : some View {
        
            VStack {
                VStack {
                    Rectangle()
                        .foregroundColor(Constants.Common.grayBackground).frame(width: 200, height: 50)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                    Rectangle()
                        .foregroundColor(Constants.Common.grayBackground).frame(width: 120, height: 30)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                }.padding(.top)
                
                HStack(spacing : 50 ){
                    ZStack{
                        Circle()
                            .fill(.yellow)
                            .frame(width: 50, height: 50)
                            //.padding()
                        Text("5")
                            .foregroundColor(.white)
                    }
                    ZStack{
                        Circle()
                            .foregroundColor(Constants.Common.grayBackground) .frame(width: 50, height: 50)
                            //.padding()
                        Text("10")
                            .foregroundColor(.white)
                    }
                    ZStack{
                        Circle()
                            .foregroundColor(Constants.Common.grayBackground)    .frame(width: 50, height: 50)
                            //.padding()
                        Text("15")
                            .foregroundColor(.white)
                    }
                }
                HStack {
                    Text("Wallet Balance:")
                    Rectangle()
                        .foregroundColor(Constants.Common.grayBackground)                    .frame(width: 50, height: 20)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                    Spacer()
                    Rectangle()
                        .foregroundColor(Constants.Common.grayBackground)                    .frame(width: 30, height: 20)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                    Rectangle()
                        .foregroundColor(Constants.Common.grayBackground)                    .frame(width: 20, height: 20)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                    
                }.padding()
                Button {
                    if selectedScreen.sheetScreenHalf == .screen1 {
                        print("@@@")
                        self.selectedScreen.sheetScreenHalf = .screen2
                    }
                    else if selectedScreen.sheetScreenHalf == .screen2 {
                        print("$$$")
                        self.selectedScreen.sheetScreenHalf = .screen3
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
                }.padding().padding(.top)
                
                }
            }
        
            .frame(height: 320)
        
        
    }
}

struct View3 : View {
    @EnvironmentObject var selectedScreen: ScreenEnvironment
    var body : some View {
    
        VStack {
            VStack {
                Text("Ready To Play?")
                    .font(.title2)
                    .frame(height: 20)
                    .padding(.bottom)
                Text("OSWALD")
                    .font(.title)
                    .frame(height: 20)
                    .padding(.bottom)
            }
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
            HStack (spacing: 10){
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
            HStack {
                Text("Wallet Balance:")
                    .padding(.leading)
                    .font(.system(size: 16))
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
                
            }.padding(.top)
            ZStack{
                Rectangle()
                    .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                    .frame(width: 320, height: 60)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
                Text("Confirm")
                    .foregroundColor(.white)
                    .font(.body)
            }.padding(.bottom).padding(.top)
        }
        .frame(height: 320)
    }
}

struct Screen3_Previews: PreviewProvider {
    static var previews: some View {
        Screen3()
            //.background(.red)
    }
}
