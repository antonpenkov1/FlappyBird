//
//  ResultView.swift
//  FlappyBird
//
//  Created by Антон Пеньков on 06.11.2023.
//

import SwiftUI

struct ResultView: View {
    let score: Int
    let highScore: Int
    let resetAction: () -> Void
    
    var body: some View {
        VStack {
            Text("Game Over")
                .font(.largeTitle)
                .padding()
            Text("Score: \(score)")
                .font(.title)
            Text("Best: \(highScore)")
                .padding()
            Button("Reset", action: resetAction)
                .padding()
                .background(.blue)
                .foregroundStyle(.white)
                .clipShape(.rect(cornerRadius: 10))
                .padding()
        }
        .background(.white.opacity(0.8))
        .clipShape(.rect(cornerRadius: 20))
        .padding()
    }
}

#Preview {
    ResultView(score: 100, highScore: 200, resetAction: {})
}
