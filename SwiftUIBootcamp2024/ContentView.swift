//
//  ContentView.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 04/03/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.black)
//            Text("Hello, world!").padding(20)
            Text("Hello, world! This is the project that I can test swiftUI for learning as a beginer")
                .font(.body)
                .fontWeight(.semibold)
                .foregroundColor(Color.pink)
            
            Text("Thang Dien").kerning(10).multilineTextAlignment(.trailing)
            Text("Hello, world! This is the project that I can test swiftUI for learning as a beginer").kerning(10).multilineTextAlignment(.leading).padding(10)
                .baselineOffset(20)
                .frame(width: 100, height: 200, alignment: .center)
            Text("Thang Dien").kerning(0).multilineTextAlignment(.trailing)
                .foregroundColor(.red)
            
            DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
