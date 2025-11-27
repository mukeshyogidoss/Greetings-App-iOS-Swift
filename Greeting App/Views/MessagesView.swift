//
//  MessagesView.swift
//  Greeting App
//
//  Created by Intern on 25/11/25.
//

import SwiftUI

struct MessagesView: View {
    var body: some View {
        let messages : [DataItemModel] = [
            .init(
                text: "Hello guys",
                color: Color("myRed")),
            .init(
                text: "Welcome to SwiftUI",
                color : Color("myBlue")   // #4CFFB3
                

            ),
            .init(
                text: "Let's get Started",
                color: Color("myGreen")
            ),
            .init(
                text: "Continue",
                color: Color("myYellow")
            ),
            .init(
                text: "Hoorayyyyy",
                color: Color("myPurple")
            ),
            
        ]
        
        VStack (alignment : .leading){
            ForEach(messages) { dataItem in
                TextView1(text : dataItem.text , color: dataItem.color)
            }
        }
    }
}

#Preview {
    MessagesView()
}
