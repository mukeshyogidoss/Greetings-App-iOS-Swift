//
//  TitleView.swift
//  Greeting App
//
//  Created by Intern on 25/11/25.
//
import SwiftUI

struct TitleView: View {
    var titleName : LocalizedStringKey
    var color : Color
    
    let lineWidth123 = 16.0
    let diameter = 65.0
    
    @State private var isRotated : Bool = false
    
    var angle : Angle{
        isRotated ? .zero : Angle(degrees : 360)
    }
    
    var angularGradinet123 : AngularGradient {
        return AngularGradient(
            colors: [
                .red,
                .pink,
                .purple,
                .blue,
                .teal,
                .green,
                .mint,
                .yellow,
                .orange,

           ],
            center: .center,
            angle: .zero
        )
    }
    
    var subHeadings : [LocalizedStringKey] = [
        "Lets learn iOS" ,
        "Lets start new Journey with iOS",
        "Get mastered in iOS",
        "Exploring iOS Programming",
        "Start your new Journey in iOS"
    ]
    
    @State private var currentHeading : LocalizedStringKey = "New path in iOS"
    
    var body: some View {
        HStack {
            VStack(alignment : .leading , spacing: 5) {
                Text(titleName)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(color)
                Text(currentHeading)
                    .font(.headline)
                    .fontWeight(.thin)
                    .foregroundColor(Color("myTextBlack"))
                    .onTapGesture {
                        withAnimation(.easeInOut){
                            currentHeading = subHeadings.randomElement() ?? LocalizedStringKey("Null")
                        }
                    }
            }
            Spacer()
            
            Circle()
                .strokeBorder( angularGradinet123, lineWidth: lineWidth123)
                .rotationEffect(angle)
                .frame(width : diameter , height : diameter)
                .onTapGesture {
                    withAnimation{isRotated.toggle()}
                }

            
        }
        .padding(25)
    }
}

#Preview {
    VStack{
        TitleView(titleName: "Greet SwiftUI", color: Color.black.opacity(0.80 ))
        Spacer()
    }
    
}
