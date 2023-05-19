//
//  WelcomeScreen.swift
//  Capital One SES Hackathon
//
//  Created by Michelle Namgoong on 8/5/22.
//

import SwiftUI

struct WelcomeScreen: View {
    
    @AppStorage("welcomeScreenShown")
    var welcomeScreenShown = false
    
    var body: some View {
        VStack {
            
            Spacer()
                .frame(height: 40)
            
            HStack {
                Image("CardCharacter")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .padding(.leading)
                    .padding(.trailing)
                    .frame(width: 330, height: 200, alignment: .center)
            }.frame(maxWidth: .infinity, alignment: .center)
            
            VStack(spacing: 0) {
                HStack {
                    Text("Welcome to your personal")
                        .font(Font.custom("Avenir Book", size: 24))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }.frame(maxWidth: .infinity, alignment: .center)
                HStack {
                    Text("bank account health buddy!")
                        .font(Font.custom("Avenir Book", size: 24))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }.frame(maxWidth: .infinity, alignment: .center)
                
            }.frame(maxWidth: .infinity, alignment: .center)
            
            Spacer()
                .frame(height: 30)
            
            VStack {
                HStack {
                    Spacer()
                        .frame(width: 21)
                    Image(systemName: "house")
                        .resizable()
                        .frame(width: 30, height: 30)
                    Spacer()
                        .frame(width: 21)
                    Text("Home is where your Tamagotchi representing bank account health lives.")
                    Spacer()
                        .frame(width: 21)
                }.frame(maxWidth: .infinity, alignment: .topLeading)
                
                Spacer()
                    .frame(height: 21)
                
                HStack {
                    Spacer()
                        .frame(width: 21)
                    Image(systemName: "text.book.closed")
                        .resizable()
                        .frame(width: 30, height: 30)
                    Spacer()
                        .frame(width: 21)
                    Text("Explore and Learn is where you can read informational articles to increase your financial literacy.")
                    Spacer()
                        .frame(width: 21)
                }.frame(maxWidth: .infinity, alignment: .topLeading)
                
                Spacer()
                    .frame(height: 21)
                
                HStack {
                    Spacer()
                        .frame(width: 21)
                    Image(systemName: "heart.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                    Spacer()
                        .frame(width: 21)
                    Text("Health Statistics is where you can view the current status of your budget and bank account health.")
                    Spacer()
                        .frame(width: 21)
                }.frame(maxWidth: .infinity, alignment: .topLeading)
                
                Spacer()
                    .frame(height: 21)
                
                HStack {
                    Spacer()
                        .frame(width: 21)
                    Image(systemName: "creditcard")
                        .resizable()
                        .frame(width: 30, height: 30)
                    Spacer()
                        .frame(width: 21)
                    Text("Financial Information is where you can view specific information about your bank account and current balance.")
                    Spacer()
                        .frame(width: 21)
                }.frame(maxWidth: .infinity, alignment: .topLeading)
                
                Spacer()
                    .frame(height: 21)
                
                HStack {
                    Spacer()
                        .frame(width: 21)
                    Image(systemName: "gear")
                        .resizable()
                        .frame(width: 30, height: 30)
                    Spacer()
                        .frame(width: 21)
                    Text("Settings is where you can customize your profile, enter your bank account information, and manage your preferences.")
                    Spacer()
                        .frame(width: 21)
                }.frame(maxWidth: .infinity, alignment: .topLeading)
            }
                
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
            
    }
}
