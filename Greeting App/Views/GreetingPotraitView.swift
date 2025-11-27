//
//  ContentView.swift
//  Greeting App
//
//  Created by Intern on 24/11/25.
//

import SwiftUI



struct GreetingPotraitView: View {
    
    
    var body: some View {
        
        ZStack{
            BackgroundView(
                color1 : Color("myBGColor1"),
                color2 : Color("myBGColor2"),
                color3 : Color("myBGColor3")
                
            )
             
            VStack(alignment : .leading) {
                
                
                //Title
                TitleView(titleName: "Greetings", color: Color("myTextBlack")
                )
                
              
                
                Spacer()
                Spacer()
                
                
                MessagesView()
                
                Spacer()
                Spacer()
                   
               

                
                    

                    
                
            }
        }
        
        
        
        
    }
}

#Preview {
    GreetingPotraitView()
        
}
