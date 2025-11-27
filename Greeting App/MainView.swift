//
//  MainView.swift
//  Greeting App
//
//  Created by Intern on 27/11/25.
//

import SwiftUI


//Potrait = Compact width , regular Height
struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    ///This View responsible Potrait or Landscape
    var body: some View {
        //if potriat mode ?
        if horizontalSizeClass == .compact && verticalSizeClass == .regular{
            GreetingPotraitView()
        }
        else{
            LandscapeGreetingsView()
        }
    }
}

#Preview {
    MainView()
}
