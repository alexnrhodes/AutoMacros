//
//  Onboarding4.swift
//  Macros
//
//  Created by Alex Rhodes on 6/14/20.
//  Copyright © 2020 Alex Rhodes. All rights reserved.
//

import SwiftUI

struct Onboarding4: View {
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
                Text("What is your style?")
                    .font(Font.custom("AvenirNext-Bold", size: 20))
                Text("This will help us distribute your macros based on your preferred diet style.")
                    .font(Font.custom("AvenirNext-Medium", size: 14))
                    .multilineTextAlignment(.center)
                
            }.padding(30)
            
            Spacer()
            VStack(alignment: .leading, spacing: 0) {
                HStack(alignment: .center) {
                    VStack(alignment: .leading) {
                        Text("Low Carbohydrate")
                            .font(Font.custom("AvenirNext-Bold", size: 14))
                        Text("I prefer fat rich foods like avocado, oils, or butters.")
                            .font(Font.custom("AvenirNext-Medium", size: 12))
                    }.padding(.leading)
                    Spacer()
                    
                    Button(action: {}) {
                        Text("HI")
                    }.background(Color.green)
                        .cornerRadius(.infinity)
                        .foregroundColor(Color.clear)
                        .frame(width: 20, height: 20, alignment: .center)
                        .shadow(radius: 5)
                        .padding(.trailing)
                    
                }.padding()
                HStack(alignment: .center) {
                    VStack(alignment: .leading) {
                        Text("Moderate Carbohydrate")
                            .font(Font.custom("AvenirNext-Bold", size: 14))
                        Text("I prefer fat and carbohydrates to be balanced.")
                            .font(Font.custom("AvenirNext-Medium", size: 12))
                    }.padding(.leading)
                    Spacer()
                    
                    Button(action: {}) {
                        Text("HI")
                    }.background(Color.green)
                        .cornerRadius(.infinity)
                        .foregroundColor(Color.clear)
                        .frame(width: 20, height: 20, alignment: .center)
                        .shadow(radius: 5)
                        .padding(.trailing)
                    
                }.padding()
                
                HStack(alignment: .center) {
                    VStack(alignment: .leading) {
                        Text("High Carbohydrate")
                            .font(Font.custom("AvenirNext-Bold", size: 14))
                        Text("I prefer carbohydrate rich foods like potatoes, pasta, and bread.")
                            .font(Font.custom("AvenirNext-Medium", size: 12))
                    }.padding(.leading)
                    Spacer()
                    
                    Button(action: {}) {
                        Text("HI")
                    }.background(Color.green)
                        .cornerRadius(.infinity)
                        .foregroundColor(Color.clear)
                        .frame(width: 20, height: 20, alignment: .center)
                        .shadow(radius: 5)
                        .padding(.trailing)
                    
                }.padding()
             Spacer()
            }
            
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

struct Onboarding4_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding4()
    }
}
