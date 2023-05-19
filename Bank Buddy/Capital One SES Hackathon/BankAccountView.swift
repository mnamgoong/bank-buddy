//
//  BankAccountView.swift
//  Capital One SES Hackathon
//
//  Created by Tia Jain on 8/4/22.
//

import SwiftUI
//
//class UserCredentials: ObservableObject {
//    @Published var username = ""
//    @Published var accNum = ""
//}

struct BankAccountView: View {
    
    @Binding var userName: String
    @Binding var accNum: String
    @Binding var budget: String
    @Binding var budgetProg: String
    //@ObservedObject var user: UserCredentials
    
    var body: some View {
        
        ZStack {
            VStack {
                Text("Bank Account")
                    .font(Font.custom("Avenir Book", size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .frame(width: 250, height: 25, alignment: .top)
                    .padding(.top)
                Text("Information")
                    .font(Font.custom("Avenir Book", size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .frame(width: 250, height: 25, alignment: .top)
                    .padding(.bottom)
                
                Form {
                    TextField("Name", text: $userName)
                    TextField("Account Number", text: $accNum)
                    TextField("Budget Maximum", text: $budget)
                    TextField("Current Balance", text: $budgetProg)
                }
                .onSubmit {
                    guard userName.isEmpty == false && accNum.isEmpty == false && budget.isEmpty == false && budgetProg.isEmpty == false else { return }
                }
            }
        }
    }
}

//struct BankAccountView_Previews: PreviewProvider {
//    static var previews: some View {
//        BankAccountView()
//    }
//}
