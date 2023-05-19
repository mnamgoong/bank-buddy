//
//  LearnView.swift
//  Capital One SES Hackathon
//
//  Created by Blaine Wells and Minh Nyugen on 8/4/22.
//

import SwiftUI

struct LearnView: View {
    @State var showWebView1 = false
    @State var showWebView2 = false
    @State var showWebView3 = false
    @State var showWebView4 = false
    @State var showWebView5 = false
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Color("Light Yellow").edgesIgnoringSafeArea(.all)
                ScrollView {
                    Text("Explore and Learn")
                        .font(Font.custom("Avenir Book", size: 30))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.top, 20)
                        .navigationTitle("Explore and Learn")
                    Spacer()
                        .frame(height: 7, alignment: .top)
                    
                    
                
                    //start of first article
                    GroupBox(label:
                        Label("Passive Income Ideas to Earn Extra Cash", systemImage: "star.fill")
                    ) {
                        ScrollView(.vertical, showsIndicators: true) {
                            Text("Passive income can help generate extra cash flow whether you’re saving toward a big goal, such as a vacation, or just want to put a little extra into your savings account. Regardless of how you intend to use the money, having extra income may offer you more financial security.")
                                .font(.footnote)
                        }
                        .frame(height: 70)
                        HStack {
                            Spacer()
                            Button("View Full Article") {
                                showWebView1 = true
                            }
                            .buttonStyle(FilledButtonStyle())
                            .sheet(isPresented: $showWebView1, content: {
                                // modally present web view
                                WebView(url:URL(string: "https://www.capitalone.com/learn-grow/money-management/passive-income-ideas-to-earn-extra-cash/")!)
                            })
                            Spacer()
                        }
                    }
                    .padding()
                
                    
                    
                    //next article
                    GroupBox(label:
                        Label("What Is Net Income & How Do You Calculate It?", systemImage: "briefcase.fill")
                    ) {
                        ScrollView(.vertical, showsIndicators: true) {
                            Text("Net income is the amount of money you bring home after taxes and deductions are taken out of your paycheck. For businesses, net income refers to the money left over after business expenses have been paid.")
                                .font(.footnote)
                        }
                        .frame(height: 70)
                        HStack {
                            Spacer()
                            Button("View Full Article") {
                                showWebView2 = true
                            }
                            .buttonStyle(FilledButtonStyle())
                            .sheet(isPresented: $showWebView2, content: {
                                // modally present web view
                                WebView(url:URL(string: "https://www.capitalone.com/learn-grow/money-management/what-is-net-income-and-how-do-you-calculate-it/")!)
                            })
                            Spacer()
                        }
                    }.padding()
                    
                    
                    
                    GroupBox(label:
                        Label("How to Calculate Debt-to-Income Ratio and What It Means", systemImage: "house.fill")
                    ) {
                        ScrollView(.vertical, showsIndicators: true) {
                            Text("When you apply for a loan or consult a financial expert, you might hear the term debt-to-income ratio, or DTI ratio for short. But what does debt-to-income ratio mean? And why does it matter?")
                                .font(.footnote)
                        }
                        .frame(height: 70)
                        HStack {
                            Spacer()
                            Button("View Full Article") {
                                showWebView3 = true
                            }
                            .buttonStyle(FilledButtonStyle())
                            .sheet(isPresented: $showWebView3, content: {
                                // modally present web view
                                WebView(url:URL(string: "https://www.capitalone.com/learn-grow/money-management/debt-income-ratio/")!)
                            })
                            Spacer()
                        }
                    }.padding()
                    
                    
                    
                    GroupBox(label:
                        Label("What Is Life Insurance and How Does It Work?", systemImage: "heart.fill")
                    ) {
                        ScrollView(.vertical, showsIndicators: true) {
                            Text("Buying life insurance is one way you can help protect your loved ones in case of the unexpected. For many, life insurance can provide peace of mind and a sense of financial security.")
                                .font(.footnote)
                        }
                        .frame(height: 70)
                        HStack {
                            Spacer()
                            Button("View Full Article") {
                                showWebView4 = true
                            }
                            .buttonStyle(FilledButtonStyle())
                            .sheet(isPresented: $showWebView4, content: {
                                // modally present web view
                                WebView(url:URL(string: "https://www.capitalone.com/learn-grow/life-events/life-insurance-shopping/")!)
                            })
                            Spacer()
                        }
                    }.padding()

                    
                    
                    GroupBox(label:
                        Label("How to Check Your Credit Score and Report", systemImage: "lightbulb.fill")
                    ) {
                        ScrollView(.vertical, showsIndicators: true) {
                            Text("Monitoring your credit is important because it can help you stay on top of your financial health. But how exactly do you check your credit and scores?")
                                .font(.footnote)
                        }
                        .frame(height: 70)
                        HStack {
                            Spacer()
                            Button("View Full Article") {
                                showWebView4 = true
                            }
                            .buttonStyle(FilledButtonStyle())
                            .sheet(isPresented: $showWebView4, content: {
                                // modally present web view
                                WebView(url:URL(string: "https://www.capitalone.com/learn-grow/money-management/monitor-your-credit/")!)
                            })
                            Spacer()
                        }
                    }.padding()
                        .frame(width: geo.size.width, height: 260, alignment: .topLeading)
                }
            }
        }
    }
}

struct FilledButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(.vertical, 8)
            .padding(.horizontal, 25)
            .font(.subheadline)
            .foregroundColor(.white)
            .background(configuration.isPressed ? Color(red: 0.0, green: 0.3, blue: 0.8) : Color("Light Orange"))
            .cornerRadius(8)
    }
}

struct LearnView_Previews: PreviewProvider {
    static var previews: some View {
        LearnView()
    }
}
