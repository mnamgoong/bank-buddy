//
//  CircularBar.swift
//  Capital One SES Hackathon
//
//  Created by Minh Nguyen on 8/4/22.
//

import SwiftUI

struct CircularProgressView: View {
    
    let progress: Double
    
    var body: some View {
        ZStack {
            //background circle
            Circle()
                .stroke(
                    Color.yellow.opacity(0.5),
                    lineWidth: 30
                )
            
            //progress circle
            Circle()
                
                .trim(from: 0, to: progress)
                .stroke(
                    Color.yellow,
                    style: StrokeStyle(
                        lineWidth: 30,
                        lineCap: .round
                    )
                )
                .rotationEffect(.degrees(-90))
        }
    }
}
