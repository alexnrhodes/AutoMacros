//
//  ContentView.swift
//  Macros
//
//  Created by Alex Rhodes on 6/9/20.
//  Copyright © 2020 Alex Rhodes. All rights reserved.
//

import SwiftUI

struct Onboarding: View {
    
    var body: some View {
        VStack() {
            Spacer()
            VStack(alignment: .center, spacing: 0) {
                Image("OrangeLogoTriangleOnly")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                
                Text("What is your goal?")
                    .font(Font.custom("AvenirNext-Bold", size: 22))
                HStack(spacing: 3) {
                    Text("Already have an account? Please sign in")
                        .font(Font.custom("AvenirNext-Medium", size: 10))
                    Button(action: {}) {
                        Text("here.")
                            .font(Font.custom("AvenirNext-Medium", size: 10))
                            .foregroundColor(Color.orange)
                    }
                }
            }
            VStack(alignment: .center, spacing: 10
            ) {
                ZStack() {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color.white)
                        .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 0, y: 5)
                        .frame(width: UIScreen.screenWidth * 0.8, height: 100, alignment: .center)
                    Button(action: {}) {
                        VStack(alignment: .leading, spacing: 0) {
                            Text("Lose Weight")
                                .foregroundColor(Color.black)
                                .font(Font.custom("AvenirNext-Bold", size: 14))
                            Text("Lose fat + get lean + improve well-being")
                                .foregroundColor(Color.black)
                                .font(Font.custom("AvenirNext-Medium", size: 12))
                        }.frame(width: UIScreen.screenWidth*0.8, height: 100, alignment: .leading).padding(.leading, 30
                        )
                    }
                    
                }
                ZStack() {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color.white)
                        .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 0, y: 5)
                        .frame(width: UIScreen.screenWidth * 0.8, height: 100, alignment: .center)
                    Button(action: {}) {
                        
                        VStack(alignment: .leading, spacing: 0) {
                            Text("Improve Fitness")
                                .foregroundColor(Color.black)
                                .font(Font.custom("AvenirNext-Bold", size: 14))
                            Text("Lose fat + get lean + improve well-being")
                                .foregroundColor(Color.black)
                                .font(Font.custom("AvenirNext-Medium", size: 12))
                        }.frame(width: UIScreen.screenWidth*0.8, height: 100, alignment: .leading).padding(.leading, 30)
                        
                    }
                }
                ZStack() {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundColor(Color.white)
                        .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 0, y: 5)
                        .frame(width: UIScreen.screenWidth * 0.8, height: 100, alignment: .center)
                    Button(action: {}) {
                        
                        VStack(alignment: .leading, spacing: 0) {
                            Text("Lose Weight")
                                .foregroundColor(Color.black)
                                .font(Font.custom("AvenirNext-Bold", size: 14))
                            Text("Lose fat + get lean + improve well-being")
                                .foregroundColor(Color.black)
                                .font(Font.custom("AvenirNext-Medium", size: 12))
                        }.frame(width: UIScreen.screenWidth*0.8, height: 100, alignment: .leading).padding(.leading, 30)
                        
                    }
                }
                
                Spacer()
                
            }.padding()
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            Onboarding()
        }
    }
}

extension UIScreen{
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
}
