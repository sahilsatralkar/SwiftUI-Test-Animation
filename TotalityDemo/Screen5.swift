//
//  Screen5.swift
//  TotalityDemo
//
//  Created by Sahil Satralkar on 23/11/21.
//

import SwiftUI

struct Screen5: View {
    var body: some View {
        VStack {
            Text("Ready To Play?")
                .foregroundColor(.gray)
                .font(.title2)
            Text("OSWALD")
                .foregroundColor(.gray)
                .font(.title)
            HStack {
                Rectangle()
                    .foregroundColor(Constants.Common.grayBackground)
                    .frame(width: 100, height: 20)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                Rectangle()
                    .foregroundColor(Constants.Common.grayBackground)
                    .frame(width: 40, height: 20)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                
            }
            HStack {
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
                
            }.padding()
            ZStack{
                Rectangle()
                    .foregroundColor(Color(red: 0.21, green: 0.21, blue: 0.21))
                    .frame(width: 320, height: 80)
                    .clipShape(RoundedRectangle(cornerRadius: 40))
                Text("Confirm")
                    .foregroundColor(.white)
                    .font(.body)
            }
        }
    }
}

struct Screen5_Previews: PreviewProvider {
    static var previews: some View {
        Screen5()
    }
}
