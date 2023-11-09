//
//  PipeView.swift
//  FlappyBird
//
//  Created by Антон Пеньков on 06.11.2023.
//

import SwiftUI

struct PipeView: View {
    let topPipeHeight: CGFloat
    let pipeWidth: CGFloat
    let pipeSpacing: CGFloat
    
    var body: some View {
        // Top pipe
        GeometryReader { geometry in
            let availableHeight = geometry.size.height - pipeSpacing
            let bottomPipeHeight = availableHeight - topPipeHeight
            
            VStack {
                Image(.pipe)
                    .resizable()
                    .rotationEffect(.degrees(180))
                    .frame(width: pipeWidth, height: topPipeHeight)
                
                Spacer()
                    .frame(height: pipeSpacing)
                
                Image(.pipe)
                    .resizable()
                    .frame(width: pipeWidth, height: bottomPipeHeight)
            }
        }
    }
}

#Preview {
    PipeView(topPipeHeight: 300, pipeWidth: 100, pipeSpacing: 100)
}
