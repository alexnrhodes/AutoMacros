//
//  Settings.swift
//  Macros
//
//  Created by Alex Rhodes on 6/22/20.
//  Copyright © 2020 Alex Rhodes. All rights reserved.
//

import SwiftUI

struct Settings: View {
    var accountSettings = ["Name", "Username", "Password", "Phone Number", "Email", "Weight", "Goal","Macro Preference", "Activity Level"]
    
    var supportSettings = ["Contact Us", "FAQ", "Privacy Policy", "Terms of Service"]
    
    var feedbackSettings = ["Contact Us", "Privacy Policy", "Terms of Service"]
    
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 0) {
                
                // ACCOUNT SETTINGS
                CustomSettingBar(content: "MY ACCOUNT")
                
                VStack(spacing: 0) {
                    ForEach(0..<accountSettings.count) {
                        CustomRow(content: self.accountSettings[$0])
                        RoundedRectangle(cornerRadius: 0)
                            .frame(width: UIScreen.screenWidth, height: 0.25, alignment: .center)
                            .foregroundColor(Color.gray.opacity(0.3))
                    }
                    
                }
                
                // SUPPORT SETTINGS
                CustomSettingBar(content: "SUPPORT")
                
                
                VStack(spacing: 0) {
                    ForEach(0..<supportSettings.count) {
                        CustomRow(content: self.accountSettings[$0])
                        RoundedRectangle(cornerRadius: 0)
                            .frame(width: UIScreen.screenWidth, height: 0.25, alignment: .center)
                            .foregroundColor(Color.gray.opacity(0.3))
                    }
                    
                }
                
               CustomSettingBar(content: "FEEDBACK")
                
                VStack(spacing: 0) {
                    ForEach(0..<feedbackSettings.count) {
                        CustomRow(content: self.accountSettings[$0])
                        RoundedRectangle(cornerRadius: 0)
                            .frame(width: UIScreen.screenWidth, height: 0.25, alignment: .center)
                            .foregroundColor(Color.gray.opacity(0.3))
                    }
                    
                }
            }
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}

struct CustomRow: View {
    var content: String
    var body: some View {
        HStack() {
            Text(content)
                .font(Font.custom("AvenirNext-Bold", size: 12))
            Spacer()
            Button(action: {}) {
                Image(systemName: "chevron.right")
                    .font(.headline)
            }
        }.padding([.leading, .trailing])
            .foregroundColor(content == "Custom Rows!" ? Color.green : Color.primary)
            .font(.title)
            .padding([.top, .bottom])
    }
    
}

struct CustomSettingBar: View {
    var content: String
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 0)
                .frame(width: UIScreen.screenWidth, height: 50, alignment: .center)
                .foregroundColor(Color.gray.opacity(0.3))
            
            Text(content)
                .font(Font.custom("AvenirNext-Bold", size: 10))
                .foregroundColor(Color.gray)
                .padding([.top, .leading])
        }
        
    }
}
