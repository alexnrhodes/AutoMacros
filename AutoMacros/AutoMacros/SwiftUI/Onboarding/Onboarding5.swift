//
//  Onboarding5.swift
//  Macros
//
//  Created by Alex Rhodes on 6/14/20.
//  Copyright © 2020 Alex Rhodes. All rights reserved.
//

import SwiftUI

struct Onboarding5: View {
    
    @State var navBarHidden: Bool = true
    
    var body: some View {
        VStack() {
            Spacer()
            VStack(alignment: .center, spacing: 0) {
                Image("OrangeLogoTriangleOnly")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                VStack(alignment: .center, spacing: 0) {
                    Text("Are you ready?")
                        .font(Font.custom("AvenirNext-Bold", size: 22))
                    
                    Text("Having your very own macro coach has never been easier. Take the math out of the equation, live balance.")
                        .font(Font.custom("AvenirNext-Medium", size: 12))
                        .multilineTextAlignment(.center)
                        .padding()
                    
                }
            }
            
            VStack(alignment: .center, spacing: -30
            ) {
                ZStack() {
                    RoundedRectangle(cornerRadius: .infinity)
                        .foregroundColor(Color.orange)
                        .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 0, y: 5)
                        .frame(width: UIScreen.screenWidth * 0.8, height: 50, alignment: .center)
                    Button(action: {}) {
                        HStack(alignment: .center, spacing: 10) {
                            Image("google")
                            Text("Google")
                                .foregroundColor(Color.black)
                                .font(Font.custom("AvenirNext-Bold", size: 14))
                            
                        }.frame(width: UIScreen.screenWidth*0.8, height: 100, alignment: .center)
                        
                    }
                    
                }
                
                ZStack() {
                    RoundedRectangle(cornerRadius: .infinity)
                        .foregroundColor(Color.orange)
                        .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 0, y: 5)
                        .frame(width: UIScreen.screenWidth * 0.8, height: 50, alignment: .center)
                    Button(action: {}) {
                        HStack(alignment: .center, spacing: 10) {
                            Image("google")
                            Text("Google")
                                .foregroundColor(Color.black)
                                .font(Font.custom("AvenirNext-Bold", size: 14))
                            
                        }.frame(width: UIScreen.screenWidth*0.8, height: 100, alignment: .center)
                        
                    }
                    
                }
                
                ZStack() {
                    RoundedRectangle(cornerRadius: .infinity)
                        .foregroundColor(Color.orange)
                        .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 0, y: 5)
                        .frame(width: UIScreen.screenWidth * 0.8, height: 50, alignment: .center)
                    Button(action: {}) {
                        HStack(alignment: .center, spacing: 10) {
                            Image("google")
                            Text("Google")
                                .foregroundColor(Color.black)
                                .font(Font.custom("AvenirNext-Bold", size: 14))
                            
                        }.frame(width: UIScreen.screenWidth*0.8, height: 100, alignment: .center)
                        
                    }
                    
                }
                
                ZStack() {
                    RoundedRectangle(cornerRadius: .infinity)
                        .foregroundColor(Color.orange)
                        .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 0, y: 5)
                        .frame(width: UIScreen.screenWidth * 0.8, height: 50, alignment: .center)
                    Button(action: {}) {
                        HStack(alignment: .center, spacing: 10) {
                            Image("google")
                            Text("Email")
                                .foregroundColor(Color.black)
                                .font(Font.custom("AvenirNext-Bold", size: 14))
                            
                        }.frame(width: UIScreen.screenWidth*0.8, height: 100, alignment: .center)
                    }
                    NavigationLink(destination: Register()) {
                        Rectangle()
                            .frame(width: UIScreen.screenWidth * 0.8, height: 50, alignment: .center)
                            .foregroundColor(.clear)
                    }
                }
                
            }.padding()
            Spacer()
        }
        .navigationBarTitle("")
        .navigationBarHidden(self.navBarHidden)
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willEnterForegroundNotification)) { _ in
            self.navBarHidden = true
        }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)) { _ in
            self.navBarHidden = false
        }
    }
}

struct Onboarding5_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding5()
    }
}
