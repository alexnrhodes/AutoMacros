//
//  HomeScreen.swift
//  Macros
//
//  Created by Alex Rhodes on 6/18/20.
//  Copyright © 2020 Alex Rhodes. All rights reserved.
//

import SwiftUI
import SunburstDiagram

struct HomeScreen: View {
    
    @State var selected = 0
    @State var overOrUnder = "over"
    var caloriesOverOrUnder = 267
    
    let configuration = SunburstConfiguration(nodes: [
        Node(name: "", value: 70, backgroundColor: .systemBlue),
        Node(name: "", value: 220, backgroundColor: .systemRed),
        Node(name: "", value: 180, backgroundColor: .systemPurple),
    ])
    
    var body: some View {
        VStack() {
            // Top View
            VStack() {
                HStack() {
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "gear")
                            .foregroundColor(Color.black)
                    }
                }.padding()
                
                VStack(alignment: .leading, spacing: 6) {
                    Text("Welcome Back, Courtney!")
                        .font(Font.custom("AvenirNext-Medium", size: 12))
                    Text("MACRO TARGETS")
                        .font(Font.custom("AvenirNext-Bold", size: 22))
                    Text("Below are your macros for the week, remember the more data we the more accurate your totals will be.")
                        .fixedSize(horizontal: false, vertical: true)
                        .font(Font.custom("AvenirNext-Medium", size: 12))
                }.padding(.trailing, 50).padding()
            }
            // Pir Chart View
            ZStack() {
                SunburstView(configuration: configuration)
                
                VStack(alignment: .center, spacing: 0) {
                    Text("2200")
                        .font(Font.custom("AvenirNext-Bold", size: 30))
                    Text("calories")
                        .font(Font.custom("AvenirNext-Medium", size: 12))
                }
                
                VStack(alignment: .center, spacing: 0) {
                    Text("180")
                        .font(Font.custom("AvenirNext-Medium", size: 12))
                    Text("grams")
                        .font(Font.custom("AvenirNext-Medium", size: 12))
                }.offset(.init(width: -UIScreen.screenSize.width / 3, height: -UIScreen.screenSize.width / 3))
                
                VStack(alignment: .center, spacing: 0) {
                    Text("70")
                        .font(Font.custom("AvenirNext-Medium", size: 12))
                    Text("grams")
                        .font(Font.custom("AvenirNext-Medium", size: 12))
                }.offset(.init(width: UIScreen.screenSize.width / 3, height: -UIScreen.screenSize.width / 3))
                
                VStack(alignment: .center, spacing: 0) {
                    Text("70")
                        .font(Font.custom("AvenirNext-Medium", size: 12))
                    Text("grams")
                        .font(Font.custom("AvenirNext-Medium", size: 12))
                }.offset(.init(width: 0, height: UIScreen.screenSize.width / 2.3))
            }
            HStack() {
                VStack(alignment: .leading, spacing: 8) {
                    
                    HStack() {
                        Text("Protien")
                            .font(Font.custom("AvenirNext-Medium", size: 12))
                        Image(systemName: "p.circle.fill")
                            .foregroundColor(Color.blue)
                            .accentColor(Color.blue)
                    }
                    
                    HStack() {
                        Text("Carbohydrates")
                            .font(Font.custom("AvenirNext-Medium", size: 12))
                        Image(systemName: "c.circle.fill")
                            .foregroundColor(Color.red)
                            .accentColor(Color.red)
                    }
                    
                    HStack() {
                        Text("Fat")
                            .font(Font.custom("AvenirNext-Medium", size: 12))
                        Image(systemName: "f.circle.fill")
                            .foregroundColor(Color.purple)
                            .accentColor(Color.purple)
                    }
                }.padding(30)
                Spacer()
                
            }
//            ZStack(alignment: .center) {
//            RoundedRectangle(cornerRadius: 0)
//                .frame(width: UIScreen.screenWidth, height: 50, alignment: .center)
//                .foregroundColor(Color.gray.opacity(0.3))                .padding(.bottom, -14.5)
//
//                HStack(alignment: .center) {
//                    Text("You were \(caloriesOverOrUnder) \(overOrUnder) your goal for today.")
//                    .font(Font.custom("AvenirNext-Medium", size: 10))
//                   Spacer()
//                    Text("Fat")
//                    .font(Font.custom("AvenirNext-Medium", size: 14))
//                }.padding()
//            }
            
            // Bottom Bar
            VStack{
                         
                           ZStack(alignment: .top) {
                               
                               BottomBar(selected: self.$selected)
                                   .padding()
                                   .padding(.horizontal, 22)
                                   .background(CurvedShape())
                            NavigationLink(destination: AddMacros()) {

                               Button(action: {
                                   
                               }) {
                                   
                                Image(systemName: "plus").renderingMode(.original).padding(30)
                                   
                               }.background(Color.green)
                               .clipShape(Circle())
                               .offset(y: -10)
                               .shadow(radius: 5)
                            }
                               
                           }
                           
                           
            }.background(Color.gray.opacity(0.3).edgesIgnoringSafeArea(.bottom))
        }
        
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}

struct CurvedShape : View {
    
    var body : some View{
        
        Path{ path in
            
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 0))
            path.addLine(to: CGPoint(x: UIScreen.main.bounds.width, y: 55))
            
            path.addArc(center: CGPoint(x: UIScreen.main.bounds.width / 2, y: 55), radius: 30, startAngle: .zero, endAngle: .init(degrees: 180), clockwise: true)
            
            path.addLine(to: CGPoint(x: 0, y: 55))
            
        }.fill(Color.clear)
        .rotationEffect(.init(degrees: 180))
    }
}

struct BottomBar : View {
    
    @Binding var selected : Int
    
    var body : some View{
        
        HStack{
            
            Button(action: {
                
                self.selected = 0
                
            }) {
                
                Image("f.circle.fill")
                
            }.foregroundColor(self.selected == 0 ? .black : .gray)
                .padding()
            
            Spacer(minLength: 12)
            
            
            Button(action: {
                
                self.selected = 1
                
            }) {
                
                Image("f.circle.fill")
                
            }.foregroundColor(self.selected == 1 ? .black : .gray)
            
        }
    }
}
