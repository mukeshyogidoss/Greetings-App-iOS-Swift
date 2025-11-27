//
//  DataItemModel.swift
//  Greeting App
//
//  Created by Intern on 25/11/25.
//

import SwiftUI

struct DataItemModel : Identifiable{ //Identifiable for unique key for ForEach like in key={} in JS
    let id =  UUID()
    let text : LocalizedStringKey
    let color : Color
}
