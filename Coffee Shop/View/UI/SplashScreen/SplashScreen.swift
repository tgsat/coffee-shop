//
//  SplashScreen.swift
//  Coffee Shop
//
//  Created by Teguh Satrio on 8/26/22.
//  Copyright © 2022 tgsatt. All rights reserved.
//

import Foundation
import SwiftUI
import Dispatch

struct SplashScreen: View {
    @State private var isActive = false
    let login = WelcomeScreen()
    
    var body: some View {
        NavigationView {
        GeometryReader {geometry in
            ZStack {
                Image(MyImage.BackgroundWhite)
                .resizable()
                .aspectRatio(geometry.size, contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            NavigationLink(destination: self.login, isActive: self.$isActive,
                           label: {
                              EmptyView()
                           })
//            Logo()
        }.background(MyColors.backgroundColors).edgesIgnoringSafeArea(.all)}.onAppear(perform: {self.gotoLoginScreen(time: 3)
            })
        }
    }
    func gotoLoginScreen(time: Double) {
        DispatchQueue.main.asyncAfter(deadline: .now() + Double(time)) {
            self.isActive = true
        }
    }
}

struct Logo: View {
    var body: some View {
        VStack(alignment: .center){
            Image(MyImage.MainLogo)
            .resizable()
            .frame(width: 186, height: 186)
        }
    }
}

