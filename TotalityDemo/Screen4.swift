//
//  Screen4.swift
//  TotalityDemo
//
//  Created by Sahil Satralkar on 23/11/21.
//

import SwiftUI

struct Screen4: View {
    
    @EnvironmentObject var selectedScreen: ScreenEnvironment
    
    var body: some View {
        VStack{
            Rectangle()
                .foregroundColor(Constants.Common.grayBackground).frame(width: 200, height: 40)
                .clipShape(RoundedRectangle(cornerRadius: 5))
            Rectangle()
                .foregroundColor(Constants.Common.grayBackground).frame(width: 120, height: 20)
                .clipShape(RoundedRectangle(cornerRadius: 5))
            HStack{
                ZStack{
                    Circle()
                        .fill(.yellow)
                        .frame(width: 50, height: 50)
                        .padding()
                    Text("5")
                        .foregroundColor(.white)
                }
                ZStack{
                    Circle()
                        .foregroundColor(Constants.Common.grayBackground) .frame(width: 50, height: 50)
                        .padding()
                    Text("10")
                        .foregroundColor(.white)
                }
                ZStack{
                    Circle()
                        .foregroundColor(Constants.Common.grayBackground)    .frame(width: 50, height: 50)
                        .padding()
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
            ZStack{
                Rectangle()
                    .fill(.yellow)
                    .frame(width: 320, height: 80)
                    .clipShape(RoundedRectangle(cornerRadius: 40))
                Text("NEXT")
                    .foregroundColor(.white)
                    .font(.body)
            }
            Spacer()
        }
    }
}

struct Screen4_Previews: PreviewProvider {
    static var previews: some View {
        Screen4()
    }
}
