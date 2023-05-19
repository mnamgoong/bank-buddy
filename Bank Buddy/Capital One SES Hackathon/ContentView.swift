//
//  ContentView.swift
//  Capital One SES Hackathon
//
//  Created by Michelle Namgoong on 8/4/22.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().barTintColor = .systemBackground
        UINavigationBar.appearance().barTintColor = .systemBackground
    }
    
    // controls whats on the screen
    @State var selectedPage = 0
    @State var showModal = false
    // var for bank info
    @State var userName = ""
    @State var accNumber = "1020"
    @State var budget = "100.00"
    @State var budgetProg = "50.00"
        
    // nav bar symbols
    let tabBarImageNames = ["house", "text.book.closed", "heart.circle.fill", "creditcard", "gear"]
    
    var body: some View {
            
        VStack(spacing: 0) {
            
            ZStack {
                
                Spacer()
                    // Health Statistics Pop Up Page
                    .fullScreenCover(isPresented: $showModal) {
                        ZStack {
                            Button(action: {
                                showModal.toggle()
                            }, label: {
                                Image(systemName: "x.square")
                                    .foregroundColor(.white)
                                    .font(.system(size: 24, weight: .bold))
                            }).padding(.trailing)
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                                .background(Color("Light Red"))
                            
                            VStack {
                                Text("Health Statistics")
                                    .font(Font.custom("Avenir Book", size: 30))
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .frame(width: 250, height: 25, alignment: .top)
                                    .padding(.top)
                                Spacer()

                                CircularProgressView(progress: Double(Double(budgetProg)!/Double(budget)!))
                                            .frame(width: 200, height: 200)
                                
                                Spacer()
                                    .frame(height: 100)
                                
                                Text("Budget: $" + String(budget))
                                    .font(Font.custom("Avenir Book", size: 24))
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .frame(width: 250, height: 25, alignment: .top)
                                    .padding(.bottom)
                                
                                Text("Remaining: $" + String(budgetProg))
                                    .font(Font.custom("Avenir Book", size: 24))
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                    .frame(width: 250, height: 25, alignment: .top)
                                Spacer()
                                
                                
                            }
                            
                            
                        }
                    }

                switch selectedPage {
                // Home Page
                case 0:
                    HomeView(budgetMax: Double(budget)!, budgetProgress: Double(budgetProg)!)
                // Explore and Learn Financial Literacy Page
                case 1:
                    LearnView()
                // Financial Information Page
                case 3:
                    BankInfo(userId: accNumber, accounts: BankAccount.sampleData)
                // Settings Page
                default:
                    SettingsView(userName: $userName, accNum: $accNumber, budget: $budget, budgetProg: $budgetProg)
                }
            }
                        
            Divider()
                .padding(.bottom, 4)
                .background(Color.init(white: 0.7))
            
            Divider()
                .padding(.bottom, 25)
            
            // nav bar
            HStack(spacing: 0) {
                ForEach(0..<5) { num in
                    Button(action: {
                        if num == 2 {
                            showModal.toggle()
                            return
                        }
                        selectedPage = num
                    }, label: {
                        Spacer()
                            .frame(width: 15)
                        if num == 2 {
                            Image(systemName: tabBarImageNames[num])
                                .font(.system(size: 60, weight: .bold))
                                .foregroundColor(Color("Light Red"))
                        } else {
                            Image(systemName: tabBarImageNames[num])
                                .font(.system(size: 30, weight: .bold))
                                .foregroundColor(selectedPage == num ? Color(.black) : .init(white: 0.7))
                        }
                        Spacer()
                            .frame(width: 15)
                    })
                }
            }
                                     
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
