//
//  Onboarding3.swift
//  Macros
//
//  Created by Alex Rhodes on 6/14/20.
//  Copyright © 2020 Alex Rhodes. All rights reserved.
//

import SwiftUI

struct Onboarding3: View {
    @State var inches: Int = 60
    @State var feet: String = ""
    
    var body: some View {
        VStack() {
            VStack() {
                Text("Question 2 of 5")
                    .font(Font.custom("AvenirNext-Bold", size: 14))
                
                ZStack(alignment: .leading) {
                    Rectangle()
                        .frame(width: UIScreen.screenWidth, height: 1, alignment: .center)
                        .foregroundColor(Color.gray)
                    Rectangle()
                        .frame(width: UIScreen.screenWidth * 0.4, height: 5, alignment: .center)
                        .foregroundColor(Color.orange)
                    
                }
            }.padding(.top, 10)
            
            Spacer()
            
            VStack(alignment: .center) {
                Text("How tall are you?")
                    .font(Font.custom("AvenirNext-Bold", size: 20))
                Text("Your height will help us accurately measure your calorie expendature.")
                    .font(Font.custom("AvenirNext-Medium", size: 14))
                    .multilineTextAlignment(.center)
                
            }.padding()
            
            HStack(alignment: .center, spacing: 8) {
                TextField("|", text: $feet)
                    .textFieldStyle(PlainTextFieldStyle())
                    .padding(30)
                    .multilineTextAlignment(.center)
                    .font(Font.custom("AvenirNext-Medium", size: 16))
                Text("FT")
                    .font(Font.custom("AvenirNext-Medium", size: 12))
                TextField("|", text: $feet)
                    .textFieldStyle(PlainTextFieldStyle())
                    .padding(30)
                    .multilineTextAlignment(.center)
                    .font(Font.custom("AvenirNext-Medium", size: 16))
                Text("IN")
                    .font(Font.custom("AvenirNext-Medium", size: 12))
            }.frame(width: UIScreen.screenWidth * 0.8, height: UIScreen.screenHeight * 0.2, alignment: .center)
            Spacer()
            
            
            HStack() {
                Spacer()
                ZStack() {
                    Image("BlackLogoTriangleOnly")
                        .resizable()
                        .frame(width: UIScreen.screenWidth * 0.3, height: UIScreen.screenWidth * 0.3, alignment: .center)
                }
                Button("", action: {})
            }.padding(.trailing, 0)
            
        }
    }
}

struct Onboarding3_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding3()
    }
}


