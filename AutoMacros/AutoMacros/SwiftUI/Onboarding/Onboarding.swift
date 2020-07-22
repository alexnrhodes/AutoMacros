//
//  ContentView.swift
//  Macros
//
//  Created by Alex Rhodes on 6/9/20.
//  Copyright © 2020 Alex Rhodes. All rights reserved.
//

import SwiftUI

struct Onboarding: View {
    init() {
          //        //Use this if NavigationBarTitle is with displayMode = .inline
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "AvenirNext-Bold", size: 14)!]
        
    }
    
    @State var navBarHidden: Bool = true
    
    var body: some View {
        NavigationView {
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
                VStack(alignment: .center, spacing: 10) {
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
                        NavigationLink(destination: Onboarding2()) {
                            Rectangle()
                                 .frame(width: UIScreen.screenWidth * 0.8, height: 100, alignment: .center)
                                .foregroundColor(.clear)
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
                        NavigationLink(destination: Onboarding2()) {
                            Rectangle()
                                 .frame(width: UIScreen.screenWidth * 0.8, height: 100, alignment: .center)
                                .foregroundColor(.clear)
                        }
                    }
                    
                    ZStack() {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color.white)
                            .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 0, y: 5)
                            .frame(width: UIScreen.screenWidth * 0.8, height: 100, alignment: .center)

                        Button(action: {print("clicked")}) {
                            
                            VStack(alignment: .leading, spacing: 0) {
                                Text("Lose Weight")
                                    .foregroundColor(Color.black)
                                    .font(Font.custom("AvenirNext-Bold", size: 14))
                                Text("Lose fat + get lean + improve well-being")
                                    .foregroundColor(Color.black)
                                    .font(Font.custom("AvenirNext-Medium", size: 12))
                            }.frame(width: UIScreen.screenWidth*0.8, height: 100, alignment: .leading).padding(.leading, 30)
                            
                            }
                        NavigationLink(destination: Onboarding2()) {
                            Rectangle()
                                .frame(width: UIScreen.screenWidth * 0.8, height: 100, alignment: .center)
                                .foregroundColor(.clear)
                        }
                    }
                }
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

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Text("")
    }
}
