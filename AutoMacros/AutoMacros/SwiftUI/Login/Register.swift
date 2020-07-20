//
//  Register.swift
//  Macros
//
//  Created by Alex Rhodes on 6/21/20.
//  Copyright © 2020 Alex Rhodes. All rights reserved.
//

import SwiftUI

struct Register: View {
    @State static private var username = ""
    @State static private var password = ""
    var body: some View {
        VStack() {
            Spacer()
            VStack(alignment: .center, spacing: 2) {
                Image("OrangeLogoTriangleOnly")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                
                Text("AutoMacros")
                    .font(Font.custom("AvenirNext-Bold", size: 22))
                
                Text("Please enter your preferred username and password below.")
                    .font(Font.custom("AvenirNext-Medium", size: 10))
                
                
            }
            VStack(alignment: .center, spacing: 10
            ) {
                TextField("   Username", text: Register.$username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .font(Font.custom("AvenirNext-Medium", size: 12))
                TextField("   Password", text: Register.$username)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .font(Font.custom("AvenirNext-Medium", size: 12))
                TextField("   Re-enter Password", text: Register.$username)
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
                            Text("Register")
                                .foregroundColor(Color.white)
                                .font(Font.custom("AvenirNext-Bold", size: 14))
                            
                        }.frame(width: UIScreen.screenWidth*0.8, height: 30, alignment: .center)
                        
                    }
                    
                }
                Spacer()
                
            }.padding()
            
            HStack(spacing: 3) {
                Text("Already have an account? Please sign in")
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
struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
    }
}
