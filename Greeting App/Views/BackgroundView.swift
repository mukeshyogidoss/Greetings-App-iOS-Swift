//
//  BackgroundView.swift
//  Greeting App
//
//  Created by Intern on 25/11/25.
//

import SwiftUI

///This is the Background struct used to change BG Colors
struct BackgroundView: View {
    let color1 : Color
    let color2 : Color
    let color3 : Color
    
    var body: some View {
        LinearGradient(
            colors: [
                color1 , color2 , color3
            ],
            startPoint: .topLeading,
            endPoint: .bottomLeading
        )
            .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView(color1 : Color.red,
                   color2 : Color.gray.opacity(0.10),
                   color3 : Color.gray.opacity(0.40))
}
