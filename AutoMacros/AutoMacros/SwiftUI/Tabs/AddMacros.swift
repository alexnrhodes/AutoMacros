//
//  AddMacros.swift
//  Macros
//
//  Created by Alex Rhodes on 6/23/20.
//  Copyright © 2020 Alex Rhodes. All rights reserved.
//

import SwiftUI

struct AddMacros: View {

    var body: some View {
        VStack {
            macroView(content: "PROTEIN")
                .padding()
            RoundedRectangle(cornerRadius: 0)
                .frame(width: UIScreen.screenWidth, height: 0.5, alignment: .center)
                .foregroundColor(Color.gray)
            macroView(content: "CARBOHYDRATES")
                .padding()
            RoundedRectangle(cornerRadius: 0)
                .frame(width: UIScreen.screenWidth, height: 0.5, alignment: .center)
                .foregroundColor(Color.gray)
            macroView(content: "FAT")
                .padding()
            RoundedRectangle(cornerRadius: 0)
                .frame(width: UIScreen.screenWidth, height: 0.5, alignment: .center)
                .foregroundColor(Color.gray)
            
            Spacer()
            
          ZStack() {
              RoundedRectangle(cornerRadius: .infinity)
                  .foregroundColor(Color.orange)
                  .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 0, y: 5)
                  .frame(width: UIScreen.screenWidth * 0.8, height: 40, alignment: .center)
              Button(action: {}) {
                  HStack(alignment: .center, spacing: 10) {
                      Text("Done")
                          .foregroundColor(Color.white)
                          .font(Font.custom("AvenirNext-Bold", size: 14))
                      
                  }.frame(width: UIScreen.screenWidth*0.8, height: 30, alignment: .center)
                      
              }
              
          }
        }
        
    }
}

struct AddMacros_Previews: PreviewProvider {
    static var previews: some View {
        AddMacros()
    }
}

struct macroView: View {
    @State static private var textFieldData = "|"
    var content: String
    var string = ""
    var body: some View {
        HStack {
            TextField("", text: macroView.$textFieldData)
                 .font(Font.custom("AvenirNext-Medium", size: 14))
                .padding(.leading, 20)
            Text(content)
             .font(Font.custom("AvenirNext-Medium", size: 12))
        }
    }
}


