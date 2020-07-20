//
//  Login.swift
//  Macros
//
//  Created by Alex Rhodes on 6/20/20.
//  Copyright © 2020 Alex Rhodes. All rights reserved.
//

import SwiftUI

struct Login: View {
    @State static private var username = ""
    @State static private var password = ""
    var body: some View {
        VStack() {
            Spacer()
            VStack(alignment: .center, spacing: 0) {
                Image("OrangeLogoTriangleOnly")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                
                Text("AutoMacros")
                    .font(Font.custom("AvenirNext-Bold", size: 22))
                
                    Text("Please enter your username and password below.")
                        .font(Font.custom("AvenirNext-Medium", size: 10))
                    
                
            }
            VStack(alignment: .center, spacing: 10
            ) {
                TextField("   Username", text: Login.$username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .font(Font.custom("AvenirNext-Medium", size: 12))
                TextField("   Password", text: Login.$username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .font(Font.custom("AvenirNext-Medium", size: 12))
                ZStack() {
                    RoundedRectangle(cornerRadius: .infinity)
                        .foregroundColor(Color.orange)
                        .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 0, y: 5)
                        .frame(width: UIScreen.screenWidth * 0.8, height: 40, alignment: .center)
                    Button(action: {}) {
                        HStack(alignment: .center, spacing: 10) {
                            Text("Login")
                                .foregroundColor(Color.white)
                                .font(Font.custom("AvenirNext-Bold", size: 14))
                            
                        }.frame(width: UIScreen.screenWidth*0.8, height: 30, alignment: .center)
                            
                    }
                    
                }
                Spacer()
                
            }.padding()
            
            HStack(spacing: 3) {
            Text("Need to sign up? Please register")
                .font(Font.custom("AvenirNext-Medium", size: 10))
            Button(action: {}) {
                Text("here.")
                    .font(Font.custom("AvenirNext-Medium", size: 10))
                    .foregroundColor(Color.orange)
            }
            }
            Spacer(minLength: 30)
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
