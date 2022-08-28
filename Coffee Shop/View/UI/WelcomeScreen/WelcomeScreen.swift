//
//  WelcomeScreen.swift
//  Coffee Shop
//
//  Created by Teguh Satrio on 8/27/22.
//  Copyright © 2022 tgsatt. All rights reserved.
//

import Foundation
import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        GeometryReader { geometry in
            
        VStack {
            Image(MyImage.WelcomeLogo).resizable().frame(width: 256, height: 284, alignment: .center)
                        
            Text(Dictionary.WelcomeHeader)
              .font(.custom("Overpass", size: 24))
                .fontWeight(.bold)
           .foregroundColor(MyColors.articleColors)
              .padding(.top, 22)
              .padding(.bottom, 16)
              .multilineTextAlignment(.center)
            
            Text(Dictionary.WelcomeText)
                .font(.custom("Overpass", size: 16))
                .fontWeight(.regular)
            .foregroundColor(MyColors.articleColors)
            .padding([.leading, .trailing, .bottom], 22)
                .multilineTextAlignment(.center)
            
            LargeButton(title: Dictionary.SignUpWithEmail,
                        backgroundColor: MyColors.primaryColors,
                        foregroundColor: MyColors.yellowprimaryColors) {
                        print(Dictionary.SignUpWithEmail)
            }
            
            LargeButton(title: Dictionary.ContinueWithApple,
                    backgroundColor: MyColors.whiteColors,
                    foregroundColor: MyColors.articleColors) {
                    print(Dictionary.ContinueWithApple)
            }
            
            LargeButton(title: Dictionary.ContinueWithGoogle,
                    backgroundColor: MyColors.whiteColors,
                    foregroundColor: MyColors.articleColors) {
                    print(Dictionary.ContinueWithGoogle)
            }
            
//            LargeButton(title: Dictionary.Login,
//                    backgroundColor: MyColors.whiteColors,
//                    foregroundColor: MyColors.articleColors) {
//                    print(Dictionary.Login)
//            }
          }
       }
       .padding(.horizontal, 16)
       .navigationBarTitle("")
       .navigationBarBackButtonHidden(true)
       .navigationBarHidden(true)
    }
}
