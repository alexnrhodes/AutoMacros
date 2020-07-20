//
//  Onboarding1.swift
//  Macros
//
//  Created by Alex Rhodes on 6/14/20.
//  Copyright © 2020 Alex Rhodes. All rights reserved.
//

import SwiftUI

struct Onboarding2: View {
    @State var username: String = ""
    
    var body: some View {
        VStack() {
            VStack() {
                Text("Question 1 of 5")
                    .font(Font.custom("AvenirNext-Bold", size: 14))
                
                ZStack(alignment: .leading) {
                    Rectangle()
                        .frame(width: UIScreen.screenWidth, height: 1, alignment: .center)
                        .foregroundColor(Color.gray)
                    Rectangle()
                        .frame(width: UIScreen.screenWidth * 0.2, height: 5, alignment: .center)
                        .foregroundColor(Color.orange)
                    
                }
            }.padding(.top, 10)
            
            Spacer()
            
            VStack() {
                Text("What is your name?")
                    .font(Font.custom("AvenirNext-Bold", size: 20))
                Text("This helps us get to know you!")
                    .font(Font.custom("AvenirNext-Medium", size: 16))
                
            }.padding()
            
            TextField("|", text: $username)
                .textFieldStyle(PlainTextFieldStyle())
                .padding(30)
                .multilineTextAlignment(.center)
                .font(Font.custom("AvenirNext-Medium", size: 16))
            
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

struct Onboarding1_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding2()
    }
}
