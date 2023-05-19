//
//  SettingsView.swift
//  Capital One SES Hackathon
//
//  Created by Minh Nguyen on 8/4/22.
//

import SwiftUI

struct SettingsView: View {
    
    // profile pic
    @State var changeProfilePicture = false
    @State var openCameraRoll = false
    @State var pictureSelected = UIImage()
    // bank account
    @State private var showBankAccView = false
    @Binding var userName: String
    @Binding var accNum: String
    @Binding var budget: String
    @Binding var budgetProg: String
    
    @State private var showWelcomeScreen = false
    
    var body: some View {
        
        GeometryReader { geo in
            ZStack {
                Color("Light Green").edgesIgnoringSafeArea(.all)
                VStack {
                    
                    Text("Settings")
                        .font(Font.custom("Avenir Book", size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.top, 20)
                        .navigationTitle("Settings")
                    
                    Spacer()
                        .frame(height: 14, alignment: .top)
                    
                    // Profile Picture
                    ZStack(alignment: .bottomTrailing) {
                        Button(action: {
                            changeProfilePicture = true
                            openCameraRoll = true
                                
                        }, label: {
                            if changeProfilePicture {
                                Image(uiImage: pictureSelected)
                                    .resizable()
                                    .frame(width: 100, height: 100, alignment: .topLeading)
                                    .clipShape(Circle())
                            } else {
                                Image("Bomi")
                                    .resizable()
                                    .frame(width: 100, height: 100, alignment: .topLeading)
                                    .clipShape(Circle())
                            }
                        })
                        Image(systemName: "plus.circle.fill")
                            .frame(width: 30, height: 30)
                            .foregroundColor(Color("Light Red"))
                    }.sheet(isPresented: $openCameraRoll) {
                        ProfilePicker(selectedImage: $pictureSelected, sourceType: .photoLibrary)
                    }
                    
                    Spacer()
                        .frame(height: 14, alignment: .top)
                    
                    // Settings Options
                    VStack {
                        Group {
                        // My Account
                        HStack {
                            Spacer()
                                .frame(width: 21)
                            Text("My Account")
                                .font(Font.custom("Avenir Book", size: 24))
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            Spacer()
                                .frame(width: 21)
                        }.frame(width: geo.size.width, alignment: .topLeading)
                        Spacer()
                            .frame(height: 7)
                        Button(action: {
                            
                        }, label: {
                            HStack{
                                Text("Personal Information")
                                    .font(Font.custom("Avenir Book", size: 18))
                                    .foregroundColor(.black)
                                    .padding(.leading)
                                Image(systemName: "arrow.forward.circle")
                                    .font(Font.custom("Avenir Book", size: 18))
                                    .foregroundColor(.black)
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                    .padding(.trailing)
                            }
                        }).frame(height: 35)
                            .background(Color("Light Green 3"))
                            .tint(Color.init(white: 0.7))
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .padding(.leading)
                            .padding(.trailing)
                        Button(action: {
                            showBankAccView = true
                        }, label: {
                            HStack{
                                Text("Bank Account")
                                    .font(Font.custom("Avenir Book", size: 18))
                                    .foregroundColor(.black)
                                    .padding(.leading)
                                Image(systemName: "arrow.forward.circle")
                                    .font(Font.custom("Avenir Book", size: 18))
                                    .foregroundColor(.black)
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                    .padding(.trailing)
                            }
                        }).frame(height: 35)
                            .background(Color("Light Green 3"))
                            .tint(Color.init(white: 0.7))
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .padding(.leading)
                            .padding(.trailing)
                            .fullScreenCover(isPresented: $showBankAccView) {
                                ZStack {
                                    BankAccountView(userName: $userName, accNum: $accNum, budget: $budget, budgetProg: $budgetProg)
                                    Button(action: {
                                        showBankAccView.toggle()
                                    }, label: {
                                        Image(systemName: "x.square")
                                            .foregroundColor(.black)
                                            .font(.system(size: 24, weight: .bold))
                                    }).padding(.trailing)
                                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                                }
                            }
                            
                        Spacer()
                            .frame(height: 14)
                        
                        // System Preferences
                        HStack {
                            Spacer()
                                .frame(width: 21)
                            Text("System Preferences")
                                .font(Font.custom("Avenir Book", size: 24))
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            Spacer()
                                .frame(width: 21)
                        }.frame(width: geo.size.width, alignment: .topLeading)
                        Spacer()
                            .frame(height: 7)
                        Button(action: {
                                    
                        }, label: {
                            HStack{
                                Text("Customize Theme")
                                    .font(Font.custom("Avenir Book", size: 18))
                                    .foregroundColor(.black)
                                    .padding(.leading)
                                Image(systemName: "arrow.forward.circle")
                                    .font(Font.custom("Avenir Book", size: 18))
                                    .foregroundColor(.black)
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                    .padding(.trailing)
                            }
                        }).frame(height: 35)
                            .background(Color("Light Green 3"))
                            .tint(Color.init(white: 0.7))
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .padding(.leading)
                            .padding(.trailing)
                        Button(action: {
                                
                        }, label: {
                            HStack{
                                Text("Notifications")
                                    .font(Font.custom("Avenir Book", size: 18))
                                    .foregroundColor(.black)
                                    .padding(.leading)
                                Image(systemName: "arrow.forward.circle")
                                    .font(Font.custom("Avenir Book", size: 18))
                                    .foregroundColor(.black)
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                    .padding(.trailing)
                            }
                        }).frame(height: 35)
                            .background(Color("Light Green 3"))
                            .tint(Color.init(white: 0.7))
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .padding(.leading)
                            .padding(.trailing)
                        }
                        
                        Spacer()
                            .frame(height: 14)
                    
                        // Help
                        HStack {
                            Spacer()
                                .frame(width: 21)
                            Text("Help")
                                .font(Font.custom("Avenir Book", size: 24))
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            Spacer()
                                .frame(width: 21)
                        }.frame(width: geo.size.width, alignment: .topLeading)
                        Spacer()
                            .frame(height: 7)
                        Button(action: {
                            showWelcomeScreen = true
                        }, label: {
                            HStack{
                                Text("Explanation")
                                    .font(Font.custom("Avenir Book", size: 18))
                                    .foregroundColor(.black)
                                    .padding(.leading)
                                Image(systemName: "arrow.forward.circle")
                                    .font(Font.custom("Avenir Book", size: 18))
                                    .foregroundColor(.black)
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                    .padding(.trailing)
                            }
                        }).frame(height: 35)
                            .background(Color("Light Green 3"))
                            .tint(Color.init(white: 0.7))
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            .padding(.leading)
                            .padding(.trailing)
                            .fullScreenCover(isPresented: $showWelcomeScreen) {
                                ZStack {
                                    WelcomeScreen()
                                    Button(action: {
                                        showWelcomeScreen.toggle()
                                    }, label: {
                                        Image(systemName: "x.square")
                                            .foregroundColor(.black)
                                            .font(.system(size: 24, weight: .bold))
                                    }).padding(.trailing)
                                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                                }
                            }
                    }
                }.frame(width: geo.size.width, height: geo.size.height, alignment: .top)
                    
            }
        }
    }
}

//struct SettingsView_Previews: PreviewProvider {
//    static var previews: some View {
//        SettingsView()
//    }
//}

struct Previews_SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
