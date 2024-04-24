//
//  StateProperty.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 24/04/2024.
//

import SwiftUI

struct StateProperty: View {
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "Hello"
    @State var textColor: Color = Color.white
    
    var body: some View {
        ZStack(content: {
            // background
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            // Buttons
            VStack {
                Text(verbatim: myTitle).font(.largeTitle)
                
                Button(action: {
                    backgroundColor = Color.yellow
                    myTitle = "Yellow"
                    textColor =  Color.blue
                }, label: {
                    Text("Change color")
                })
                
                Button(action: {
                    backgroundColor = Color.red
                    myTitle = "Red"
                    textColor = Color.yellow
                }, label: {
                    Text("Change color")
                })
            }
            
        }).foregroundColor(textColor)
    }
}

#Preview {
    StateProperty()
}
