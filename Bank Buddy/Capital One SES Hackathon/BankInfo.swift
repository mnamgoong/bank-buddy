//
// BankInfo.swift
// Capital One SES Hackathon
//
// Created by Minh Nguyen on 8/4/22.
//

import SwiftUI

struct BankInfo: View {
  
    var userId: String
    let accounts: [BankAccount]
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Color("Light Blue").edgesIgnoringSafeArea(.all)
                VStack {
                    Text("Financial Information")
                        .font(Font.custom("Avenir Book", size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.top, 20)
                        .navigationTitle("Financial Information")
                    
                    VStack(spacing: 0) {
                        Spacer()
                            .frame(height: 80)
                        
                        ForEach(accounts) { account in
                            if (account.id == userId){
                                VStack(spacing: 0) {
                                    HStack {
                                        Text("Bank Account Number")
                                            .font(Font.custom("Avenir Book", size: 24))
                                            .foregroundColor(.white)
                                            .padding()
                                            .frame(maxWidth: .infinity, alignment: .center)
                                    }.background(Color("Turquoise"))
                                        .padding(.leading)
                                        .padding(.trailing)
                                    
                                    HStack {
                                        Text(account.id)
                                            .font(Font.custom("Avenir Book", size: 24))
                                            .foregroundColor(Color("Turquoise"))
                                            .padding()
                                            .frame(maxWidth: .infinity, alignment: .center)
                                    }.background(Color.white)
                                        .padding(.leading)
                                        .padding(.trailing)
                                }
                                
                                Spacer()
                                    .frame(height: 30)
                                
                                VStack(spacing: 0) {
                                    HStack {
                                        Text("Balance")
                                            .font(Font.custom("Avenir Book", size: 24))
                                            .foregroundColor(.white)
                                            .padding()
                                            .frame(maxWidth: .infinity, alignment: .center)
                                    }.background(Color("Turquoise"))
                                        .padding(.leading)
                                        .padding(.trailing)
                                    
                                    HStack {
                                        Text("$" + String(account.balance))
                                            .font(Font.custom("Avenir Book", size: 24))
                                            .foregroundColor(Color("Turquoise"))
                                            .padding()
                                            .frame(maxWidth: .infinity, alignment: .center)
                                    }.background(Color.white)
                                        .padding(.leading)
                                        .padding(.trailing)
                                }
                                
                                Spacer()
                                    .frame(height: 30)
                                
                                VStack(spacing: 0) {
                                    HStack {
                                        Text("Routing Number")
                                            .font(Font.custom("Avenir Book", size: 24))
                                            .foregroundColor(.white)
                                            .padding()
                                            .frame(maxWidth: .infinity, alignment: .center)
                                    }.background(Color("Turquoise"))
                                        .padding(.leading)
                                        .padding(.trailing)
                                    
                                    HStack {
                                        Text(String(account.routing))
                                            .font(Font.custom("Avenir Book", size: 24))
                                            .foregroundColor(Color("Turquoise"))
                                            .padding()
                                            .frame(maxWidth: .infinity, alignment: .center)
                                    }.background(Color.white)
                                        .padding(.leading)
                                        .padding(.trailing)
                                }
                            }
                        }
                    }
                }.frame(width: geo.size.width, height: geo.size.height, alignment: .top)
            }
        }
    }
}

struct BankInfo_Previews: PreviewProvider {
    static var accounts = BankAccount.sampleData
    static var previews: some View {
        BankInfo(userId: "1", accounts: accounts)
    }
}
