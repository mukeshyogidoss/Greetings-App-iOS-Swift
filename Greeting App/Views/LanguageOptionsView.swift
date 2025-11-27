//
//  LanguageOptionsView.swift
//  Greeting App
//
//  Created by Intern on 27/11/25.
//

import SwiftUI

struct LanguageOptionsView: View {
    
    @Binding var language : String
    @Binding var layoutDirectionString : String
    
    var body: some View {
        Image(systemName:  "gearshape.fill")
            .contextMenu(ContextMenu(menuItems: {
                Button("English"){
                    language = "en"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
                Button("Tamil"){
                    language = "tam"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
                Button("Malayalam"){
                    language = "mly"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
                Button("Japanese"){
                    language = "jpn"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
                Button("French"){
                    language = "fr"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
                Button("Hindi"){
                    language = "hin"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
            }))
    }
}

#Preview {
    LanguageOptionsView(language: .constant("tam"), layoutDirectionString: .constant(LEFT_TO_RIGHT)
        )
}

