//
//  LandscapeGreetingsView.swift
//  Greeting App
//
//  Created by Intern on 27/11/25.
//

import SwiftUI

struct LandscapeGreetingsView: View {
    var body: some View {
        ZStack{
            BackgroundView(
                color1 : Color("myBGColor1"),
                color2 : Color("myBGColor2"),
                color3 : Color("myBGColor3")
                
            )
             
            HStack{
                
                
                //Title
               
                    TitleView(
                        titleName: "Greetings",
                        color: Color(
                            "myTextBlack"
                        )
                    )
                    .padding(.leading , -30)
                    
                
                MessagesView().frame(maxWidth: .infinity)   // take full width
                    .minimumScaleFactor(0.1)      // shrink text if needed
                    .padding(3)
                        
                

                
                
            }
        }
    }
}

#Preview {
    LandscapeGreetingsView()
}
