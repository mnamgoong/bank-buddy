//
//  HomeView.swift
//  Capital One SES Hackathon
//
//  Created by Minh Nguyen on 8/4/22.
//

import SwiftUI


struct HomeView: View {
    var budgetMax: Double
    var budgetProgress: Double
    
    @State var characterLevel = 0
    
    
    
    var body: some View {
        
        GeometryReader { geo in
            Image("Background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
                .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
            
            VStack {
                let characterTracker = budgetProgress/budgetMax
                Text("Hello, I'm Bank Buddy!")
                    .font(Font.custom("Avenir Book", size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .frame(width: geo.size.width, height: 40, alignment: .center)
                    .padding(.top, 20)
                    .navigationTitle("Home")
                Spacer()
                    .frame(width: geo.size.width, height: 14, alignment: .top)
                // Bars
                HStack {
                    Text("Budget")
                        .foregroundColor(Color("Turquoise"))
                        .fontWeight(.bold)
                    ProgressView(value: budgetProgress, total: budgetMax)
                        .accentColor(Color("Turquoise"))
                        .scaleEffect(x: 1, y: 4, anchor: .center)
                        .frame(width: 200, height: 20, alignment: .center)
                    Text(String(characterTracker*100) + "%")
                        .foregroundColor(Color("Turquoise"))
                        .fontWeight(.bold)
                }
                Spacer()
                    .frame(width: geo.size.width, height: 7, alignment: .top)
                HStack {
                    Text("Credit")
                        .foregroundColor(Color("Light Green 2"))
                        .fontWeight(.bold)
                        .padding(.leading, 8)
                    ProgressView(value: budgetProgress, total: budgetMax)
                        .accentColor(Color("Light Green 2"))
                        .scaleEffect(x: 1, y: 4, anchor: .center)
                        .frame(width: 200, height: 20, alignment: .center)
                    Text(String(characterTracker*100) + "%")
                        .foregroundColor(Color("Light Green 2"))
                        .fontWeight(.bold)
                }
                // Character
                if (characterTracker >= 0.0 && characterTracker <= 0.33){
                    Image("CardCharacter0")
                        .resizable()
                        .scaledToFit()
                        .padding(.leading)
                        .frame(width: 330, height: 780, alignment: .center)
                }
                else if(characterTracker > 0.33 && characterTracker <= 0.67){
                    Image("CardCharacter1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 780, alignment: .center)
                }
                else {
                    Image("CardCharacter")
                        .resizable()
                        .scaledToFit()
                        .padding(.leading, 20)
                        .frame(width: 330, height: 780, alignment: .center)
                }

                
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(budgetMax: 100.0, budgetProgress: 99.1)
    }
}
