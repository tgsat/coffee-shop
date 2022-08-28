//
//  LoginScreen.swift
//  Coffee Shop
//
//  Created by Teguh Satrio on 8/26/22.
//  Copyright © 2022 tgsatt. All rights reserved.
//

import Foundation
import SwiftUI

struct LoginScreen: View {
@State var color = Color.black.opacity(0.7)
@State var email = ""
@State var pass = ""

var body: some View {
    GeometryReader { geometry in
        ZStack {
            Image("ImageBackgroundBlue")
                .resizable()
                .aspectRatio(geometry.size, contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            VStack {

                Spacer()
//                Image("MainLogo").resizable().frame(width: 186, height: 186, alignment: .center)

                
                HStack {
                    Text("Sign In")
                        .font(.body)
                        .fontWeight(.bold)
                        .foregroundColor(self.color)
                        .padding(.top, 10)
                    Spacer()
                }
                
                TextField("Email",text: self.$email)
                .padding()
                .border(self.color)
                .background(RoundedRectangle(cornerRadius: 4).fill(Color.white))
                
                TextField("Password",text: self.$pass)
                .padding()
                .border(self.color)
                .background(RoundedRectangle(cornerRadius: 4)
                    .fill(Color.white)).padding(.top, 16)

                HStack {
                    Spacer()
                    Text("Forgot password?")
                        .font(.footnote)
                        .fontWeight(.regular)
                        .foregroundColor(self.color)
                        .padding(.bottom, 50)
                        .allowsTightening(true)
                }

                ButtonLogin()

                Spacer()
                
                HStack {
                    
                    Text("< Don't have an account?")
                        .font(.footnote)
                    .fontWeight(.regular)
                    .foregroundColor(self.color)
                    
                    Text("Sign Up")
                    .font(.footnote)
                    .fontWeight(.bold)
                    .foregroundColor(self.color)
                    .onTapGesture(count: 2) {
                        print("Sign Up")
                    }


                }.padding(.top, 35)
            }
            .padding(.horizontal, 16)
            .navigationBarTitle("")
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
            }
        }
    }
}


struct ButtonLogin: View {
    @State var colorBlack = Color.black.opacity(0.7)
    @State var colorWhite = Color.white
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
        Button(action: { print("Login") }) {
            Text("Login")
                .font(.subheadline)
                .fontWeight(.bold)
                .foregroundColor(self.colorWhite)
            .padding()
        }.frame(minWidth: 100, maxWidth: .infinity, minHeight: 44)
            .background(self.colorBlack)

        }.background(self.colorBlack)
    }}

