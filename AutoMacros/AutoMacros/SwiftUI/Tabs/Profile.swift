//
//  Profile.swift
//  Macros
//
//  Created by Alex Rhodes on 6/21/20.
//  Copyright © 2020 Alex Rhodes. All rights reserved.
//

import SwiftUI

struct Profile: View {
    
    @State var selected = 0
    @State var overOrUnder = "over"
    var caloriesOverOrUnder = 267
    var poundsLostOrGained = -20
    var daysTracked = 100
    var compliance = 97
    var carbsByDate = 300
    var proteinByDate = 180
    var fatsByDate = 70
    
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
                    Text("Courtney")
                        .font(Font.custom("AvenirNext-Heavy", size: 26))
                    Text("Below are your macros for the week, remember the more data we the more accurate your totals will be.")
                        .fixedSize(horizontal: false, vertical: true)
                        .font(Font.custom("AvenirNext-Medium", size: 12))
                }.padding(.trailing, 50).padding()
            }
            
            HStack(alignment: .center) {
                VStack(alignment: .center, spacing: 0) {
                    Text("\(poundsLostOrGained)")
                        .font(Font.custom("AvenirNext-Bold", size: 20))
                    Text("Pounds")
                        .font(Font.custom("AvenirNext-ExtraLight", size: 10))
                }
                Spacer()
                VStack(alignment: .center, spacing: 0) {
                    Text("\(daysTracked)")
                        .font(Font.custom("AvenirNext-Bold", size: 20))
                    Text("Days Tracked")
                        .font(Font.custom("AvenirNext-ExtraLight", size: 10))
                }
                Spacer()
                VStack(alignment: .center, spacing: 0) {
                    Text("\(compliance)%")
                        .font(Font.custom("AvenirNext-Bold", size: 20))
                    Text("Pounds")
                        .font(Font.custom("AvenirNext-ExtraLight", size: 10))
                }
            }.padding(.leading, 50).padding(.trailing, 50)
            
            // Graph View
            
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.gray.opacity(0.3))
            
            HStack() {
                HStack() {
                    Text("Within' Range")
                        .font(Font.custom("AvenirNext-Medium", size: 9))
                    Circle()
                        .foregroundColor(Color.green)
                        .frame(width: 10, height: 10, alignment: .center)
                }
                HStack() {
                    Text("Out of Range")
                        .font(Font.custom("AvenirNext-Medium", size: 9))
                    Circle()
                        .foregroundColor(Color.red)
                        .frame(width: 10, height: 10, alignment: .center)
                }
                Spacer()
            }.padding(.leading)
            
            HStack() {
                VStack(alignment: .center, spacing: 8) {
                    
                    HStack() {
                        Text("Protien")
                            .font(Font.custom("AvenirNext-Italic", size: 14))
                        Circle()
                            .foregroundColor(Color.green)
                            .frame(width: 15, height: 15, alignment: .center)
                        Spacer()
                        Text("\(proteinByDate) grams")
                            .font(Font.custom("AvenirNext-Medium", size: 14))
                        
                    }
                    
                    HStack() {
                        Text("Carbohydrates")
                            .font(Font.custom("AvenirNext-Italic", size: 14))
                        Circle()
                            .foregroundColor(Color.green)
                            .frame(width: 15, height: 15, alignment: .center)
                        Spacer()
                        Text("\(carbsByDate) grams")
                            .font(Font.custom("AvenirNext-Medium", size: 14))
                    }
                    
                    HStack() {
                        Text("Fat")
                            .font(Font.custom("AvenirNext-Italic", size: 14))
                        Circle()
                            .foregroundColor(Color.green)
                            .frame(width: 15, height: 15, alignment: .center)
                        Spacer()
                        Text("\(fatsByDate) grams")
                            .font(Font.custom("AvenirNext-Medium", size: 14))
                    }
                }.padding()
                
                
            }
            ZStack(alignment: .center) {
                RoundedRectangle(cornerRadius: 0)
                    .frame(width: UIScreen.screenWidth, height: 50, alignment: .center)
                    .foregroundColor(Color.gray.opacity(0.3))                .padding(.bottom, -14.5)
                
                HStack(alignment: .center) {
                    Text("You were \(caloriesOverOrUnder) \(overOrUnder) your goal for today.")
                        .font(Font.custom("AvenirNext-Medium", size: 10))
                    Spacer()
                    Text("2200")
                        .font(Font.custom("AvenirNext-Medium", size: 20))
                    
                }.padding()
            }
            
            // Bottom Bar
            VStack{
                
                ZStack(alignment: .top) {
                    
                    BottomBar(selected: self.$selected)
                        .padding()
                        .padding(.horizontal, 22)
                        .background(CurvedShape())
                    
                    Button(action: {
                        
                    }) {
                        
                        Image(systemName: "plus").renderingMode(.original).padding(30)
                        
                    }.background(Color.green)
                        .clipShape(Circle())
                        .offset(y: -10)
                        .shadow(radius: 5)
                    
                }
                
                
            }.background(Color.gray.opacity(0.3).edgesIgnoringSafeArea(.bottom))
        }
        
    }
}


struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
