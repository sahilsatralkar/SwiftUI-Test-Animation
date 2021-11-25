//
//  Screen2.swift
//  TotalityDemo
//
//  Created by Sahil Satralkar on 22/11/21.
//

import SwiftUI

struct Screen2: View {
    @EnvironmentObject var selectedScreen: ScreenEnvironment
    @State var show = false
    @State private var show2 = false
    
    @State private var sheet3Mode : Screen3Mode = .none
    
    var body: some View {
        GeometryReader { geometry in
            //Screen3(screen3Mode: $sheet3Mode)
            VStack {
                HStack {
                    LogoView()
                        .opacity(self.show ?  1: 0)
                        .offset(x: self.show ? 0 : 60, y: self.show ? 0 : 60)
                        .animation(Animation.easeOut(duration: 1).delay(0.1))
                    Text("CANDY BUST")
                        .font(.title3)
                        .fontWeight(.medium)
                        .foregroundColor(Constants.Screen1.textColor)
                        .frame(width: 80, height: 60)
                        .lineLimit(2)
                        .padding(.bottom)
                        .padding(.leading)
                        .opacity(self.show ?  1: 0)
                        .offset(y: self.show ? 0 : 20)
                        .animation(Animation.easeOut(duration: 0.2).delay(1))
                    Spacer()
                    VStack {
                        Text("x")
                            .font(.title)
                            .foregroundColor(Constants.Screen1.textColor)
                            
//                        Text("")
//                        Text("")
                        Spacer()
                    }
                    .frame(width: 60, height: 80)
                    .opacity(self.show ?  1: 0)
                    .offset(y: self.show ? 0 : 20)
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
                        .opacity(self.show ?  1: 0)
                        .offset(y: self.show ? 0 : 20)
                        .animation(Animation.easeOut(duration: 0.2).delay(1))
                    
                }
                HStack{
                    Text("READ MORE")
                        .font(.body)
                        .foregroundColor(Color(red: 156/255, green: 214/255, blue: 90/255))
                        .opacity(self.show ?  1: 0)
                        .offset(y: self.show ? 0 : 20)
                        .animation(Animation.easeOut(duration: 0.1).delay(1))
                }
                Spacer()
                HStack {
                    Rectangle()
                        .foregroundColor(Constants.Common.grayBackground)
                        .frame(width: 190, height: 410)
                        
                    Rectangle()
                        .foregroundColor(Constants.Common.grayBackground)
                        .frame(width: 190, height: 410)
                        
                }
                
                .opacity(self.show ?  1: 0)
                .offset(x: self.show ? 0 : 100)
                .animation(Animation.easeOut(duration: 1).delay(1))
                //Spacer()
                Button {
                        print("ON tap download button")
                    //sheet3Mode = .quarter
                    show2 = true
                    
                } label: {
                    ZStack{
                            Rectangle()
                                .fill(.yellow)
                                .frame(width: 350, height: 60)
                                .clipShape(RoundedRectangle(cornerRadius: 30))
                                .padding()
                            VStack {
                                Text("Download")
                                Text("30 MB")
                            }.foregroundColor(.white)
                        }.padding(.top)
                        .opacity(self.show ?  1: 0)
                        .offset(y: self.show ? 0 : -30)
                        .animation(Animation.easeOut(duration: 1).delay(0.1))
                }
            }
//            .sheet(isPresented: $show2) {
//                Screen3()
//            }
            
            .onAppear(perform: {
                
                print("On appear")
                self.show = true
            })
            BottomSheetView(isOpen: $show2, maxHeight: 380) {
                if selectedScreen.sheetScreen == .screen3 {
                    Screen3()
                } else if selectedScreen.sheetScreen == .screen4 {
                    Screen4()
                } else {
                    Screen5()
                }
                
            }
        }
    }
}



struct TextView1: View {
    var body: some View {
        VStack {
            Text("Download")
            Text("30 MB")
            
        }
        
    }
}

struct Screen2_Previews: PreviewProvider {
    static var previews: some View {
        Screen2()
    }
}
