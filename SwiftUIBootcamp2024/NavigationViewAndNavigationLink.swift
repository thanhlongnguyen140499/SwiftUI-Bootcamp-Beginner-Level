//
//  NavigationViewAndNavigationLink.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 04/05/2024.
//

import SwiftUI

struct NavigationViewAndNavigationLink: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Hello", destination:
                                HelloWorld()
                )
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("All Options")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

struct HelloWorld: View {
    @Environment(\.presentationMode) var presentationMode;
    var body: some View {
        
        ZStack {
            Color.red.ignoresSafeArea(.all)
            
            ScrollView {
                Text("Goodbye")
                Text("Goodbye")
                Text("Goodbye")
                Text("Goodbye")
                Text("Goodbye")
            }
            .navigationTitle("GoodBye")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarBackButtonHidden()
            .toolbar(content: {
                ToolbarItemGroup(placement: .topBarLeading) { 
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Text("Back")
                    })
                }
                
                ToolbarItemGroup(placement: .topBarTrailing) {
                    NavigationLink("Third", destination: ThirdScreen())
                }
            })
        }
    }
}

struct ThirdScreen: View {
    @Environment(\.presentationMode) var presentationMode;
    
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea(.all)
                .navigationTitle("Third Screen")
                .navigationBarBackButtonHidden()
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Back")
            })
        }
    }
}

#Preview {
    NavigationViewAndNavigationLink()
}
