//
//  TextView.swift
//  Greeting App
//
//  Created by Intern on 25/11/25.
//

import SwiftUI

struct TextView1: View {
    var text : LocalizedStringKey
    @State var color : Color
    
    var colors : [Color] = [
        .red,
        .yellow,
        .purple,
        .green,
        .orange,
        .blue,
        .mint,
        .teal,
        .indigo,
        Color(red: 1.00, green: 0.00, blue: 0.50), //Pink
        Color(red: 0.90, green: 0.00, blue: 0.90), //Neon Magneta
        Color(red: 0.00, green: 0.45, blue: 1.00), //Blue
        Color(red: 0.00, green: 0.85, blue: 0.70), //Dark Teal
        Color(red: 1.00, green: 0.27, blue: 0.33), //Coral
        Color(red: 0.30, green: 1.00, blue: 0.70), //Neon Lime
        Color(red: 0.70, green: 1.00, blue: 0.85),   // Soft Mint
    
 



    ]

    
    var body: some View {
        Text(text)
            .padding(15)
            .fontWeight(.semibold)
            .font(.title)
            .foregroundColor(Color("myTextBlack"))
            .background(color.opacity(0.4))
            .cornerRadius(25)
            .shadow(
                color: color,
                radius: 15,
                x: 10,
                y: 8
            )
            .onTapGesture {
                //             Random colrss   ?? if nil occured then it shows .red
                color = colors.randomElement() ?? .red

            }
            
            .padding(10)
    }
}

#Preview {
    VStack{
        TextView1(text : "Helloooooo", color: .green)
        TextView1(text : "Welcomeeeeeee", color: .green)
        TextView1(text : "SWift UIIIIII", color: .green)
    }
}
