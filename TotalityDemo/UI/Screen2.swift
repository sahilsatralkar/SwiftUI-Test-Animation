//
//  Screen2.swift
//  TotalityDemo
//
//  Created by Sahil Satralkar on 22/11/21.
//

import SwiftUI

struct Screen2: View {
    @EnvironmentObject var selectedScreen: ScreenEnvironment
    @State var startAnimation = false
    @State private var showBottomSheet = false
    @State private var showTimedAnimation = false
    @State private var showCheckmark = false
    @State private var buttonColorFlashing = false
    @State private var animationScaleValue: CGFloat = 0
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HStack {
                    LogoView()
                        .opacity(self.startAnimation ?  1: 0)
                        .offset(x: self.startAnimation ? 0 : 60, y: self.startAnimation ? 0 : 60)
                        .animation(Animation.easeOut(duration: 1).delay(0.1))
                    Text("CANDY BUST")
                        .font(.title3)
                        .fontWeight(.medium)
                        .foregroundColor(Constants.Screen1.textColor)
                        .frame(width: 80, height: 60)
                        .lineLimit(2)
                        .padding(.bottom)
                        .padding(.leading)
                        .opacity(self.startAnimation ?  1: 0)
                        .offset(y: self.startAnimation ? 0 : 20)
                        .animation(Animation.easeOut(duration: 0.2).delay(1))
                    Spacer()
                    VStack {
                        Text("x")
                            .font(.title)
                            .foregroundColor(Constants.Screen1.textColor)
                        Spacer()
                    }
                    .frame(width: 60, height: 80)
                    .opacity(self.startAnimation ?  1: 0)
                    .offset(y: self.startAnimation ? 0 : 20)
                    .animation(Animation.easeOut(duration: 0.1).delay(0.2))
                }
                .padding(10)
                HStack{
                    Text("What is Lorem Ipsum?Lorem Ipsum is simply dummy text of the printing and typesetting")
                        .foregroundColor(Constants.Screen1.textColor)
                        .fontWeight(.medium)
                        .multilineTextAlignment(.leading)
                        .lineLimit(2)
                        .frame(width: 380,  height: 50)
                        .padding(.trailing)
                        .opacity(self.startAnimation ?  1: 0)
                        .offset(y: self.startAnimation ? 0 : 20)
                        .animation(Animation.easeOut(duration: 0.2).delay(1))
                    
                }
                HStack{
                    Text("READ MORE")
                        .font(.body)
                        .foregroundColor(Color(red: 156/255, green: 214/255, blue: 90/255))
                        .opacity(self.startAnimation ?  1: 0)
                        .offset(y: self.startAnimation ? 0 : 20)
                        .animation(Animation.easeOut(duration: 0.1).delay(1))
                }
                Spacer()
                HStack {
                    Rectangle()
                        .foregroundColor(Constants.Common.grayBackground)
                        .frame(width: 195, height: 410)
                    
                    Rectangle()
                        .foregroundColor(Constants.Common.grayBackground)
                        .frame(width: 195, height: 410)
                    
                }
                .opacity(self.startAnimation ?  1: 0)
                .offset(x: self.startAnimation ? 0 : 100)
                .animation(Animation.easeOut(duration: 1).delay(1))
                Button {
                    withAnimation {
                        switch selectedScreen.buttonStates {
                        case .first :
                            selectedScreen.buttonStates = .second
                            Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { _ in
                                selectedScreen.buttonStates = .third
                            }
                        case .second:
                            fallthrough
                        case .third:
                            Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { _ in
                                withAnimation (.easeIn(duration: 0.5)) {
                                    selectedScreen.buttonStates = .fourth
                                }
                            }
                        case .fourth:
                            self.showBottomSheet = true
                            Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { _ in
                                selectedScreen.isHalfSheetNav = true
                            }
                        }
                    }
                } label: {
                    switch selectedScreen.buttonStates {
                    case .first :
                        ZStack{
                            Rectangle()
                                .foregroundColor(Constants.Button.color2)
                                .frame(width: 350, height: 60)
                                .clipShape(RoundedRectangle(cornerRadius: 30))
                                .padding()
                            VStack {
                                Text("Download")
                                Text("30 MB")
                            }.foregroundColor(.white)
                        }.padding(.top)
                            .opacity(self.startAnimation ?  1: 0)
                            .offset(y: self.startAnimation ? 0 : -30)
                            .animation(Animation.easeOut(duration: 1).delay(0.1))
                        
                    case .second :
                        HStack{
                            ZStack {
                                Rectangle()
                                    .foregroundColor(Constants.Button.color2)
                                    .frame(width: 300, height: 60)
                                    .clipShape(RoundedRectangle(cornerRadius: 30))
                                    .padding()
                                VStack {
                                    Text("Download")
                                    Text("30 MB")
                                }.foregroundColor(.white)
                            }
                            ZStack {
                                Circle()
                                    .foregroundColor(Constants.Button.color1)
                                    .frame(width: 40, height: 40)
                                Image(systemName: "xmark")
                                
                            }.offset(x: -20)
                        }.frame(width: 350).padding(.top)
                        
                    case .third :
                        HStack{
                            ZStack (alignment: .leading){
                                Rectangle()
                                    .foregroundColor(Constants.Button.color3)
                                    .frame(width: 300, height: 60)
                                    .clipShape(RoundedRectangle(cornerRadius: 30))
                                    .padding()
                                Rectangle()
                                    .foregroundColor(Constants.Button.color2)
                                    .frame(width: self.showTimedAnimation ? 300 : 60 , height: 60)
                                    .clipShape(RoundedRectangle(cornerRadius: 30))
                                    .padding()
                                    .animation(.linear(duration: 2))
                                    .onAppear(){
                                        Timer.scheduledTimer(withTimeInterval: 0.5, repeats: false) { _ in
                                            self.showTimedAnimation = true
                                        }
                                        Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { _ in
                                            self.showTimedAnimation = true
                                            self.selectedScreen.buttonStates = .fourth
                                        }
                                    }
                                VStack {
                                    Text("10 MB / 30 MB")
                                }.foregroundColor(.white).offset(x: 120)
                            }
                            ZStack {
                                Circle()
                                    .foregroundColor(Constants.Button.color1)
                                    .frame(width: 40, height: 40)
                                Image(systemName: self.showCheckmark ? "checkmark" : "xmark" )
                                
                            }.offset(x: -20)
                                .onAppear(){
                                    Timer.scheduledTimer(withTimeInterval: 2.5, repeats: false) { _ in
                                        self.showCheckmark = true
                                    }
                                }
                        }.frame(width: 350).padding(.top)
                    case .fourth :
                        ZStack{
                            Rectangle()
                                .foregroundColor(self.buttonColorFlashing ? Constants.Button.color4 : Constants.Button.color5)
                                .frame(width: 350, height: 60)
                                .clipShape(RoundedRectangle(cornerRadius: 30))
                                .padding()
                            VStack {
                                Text("PLAY")
                            }.foregroundColor(.white)
                        }.padding(.top)
                            .scaleEffect(animationScaleValue)
                            .animation(.linear(duration: 0.4), value: animationScaleValue)
                            .onAppear(){
                                self.animationScaleValue = 1.0
                                Timer.scheduledTimer(withTimeInterval: 0.8, repeats: true) { _ in
                                    withAnimation(.linear(duration: 0.4)) {
                                        self.buttonColorFlashing.toggle()
                                    }
                                }
                            }
                    }
                }
            }
            .onAppear(perform: {
                self.startAnimation = true
            })
            BottomSheetView(isOpen: $showBottomSheet, maxHeight: 380) {
                Screen3()
            }
        }
    }
}

struct Screen2_Previews: PreviewProvider {
    static var previews: some View {
        Screen2()
    }
}
