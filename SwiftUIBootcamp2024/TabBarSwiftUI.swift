//
//  TabBarSwiftUI.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 06/05/2024.
//

import SwiftUI

struct TabBarSwiftUI: View {
    @State var tabBarSelection: Int = 1
    let icons: [String] = ["heart.fill", "globe", "house.fill", "person.fill"]
    
    var body: some View {
        ZStack {
            // Tabview 1
//            TabView(selection: $tabBarSelection,
//                    content:  {
//                Homeview().tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home") }.tag(1)
//                ContactView(tabBarSelection: $tabBarSelection).tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Contact") }.tag(2)
//            })
//            .accentColor(.red)
//            .tabViewStyle(.page(indexDisplayMode: .automatic))
            
            // Tabview 2
            TabView {
                ForEach(icons, id: \.self) { image in
                    Image(systemName: image)
                        .resizable()
                        .scaledToFit()
                        .padding(30)
                }
            }
            .tabViewStyle(.page)
            .background(RadialGradient(gradient: Gradient(colors: [Color.red, Color.blue]), center: UnitPoint.center, startRadius: 5, endRadius: 300))
            
        }
    }
}

#Preview {
    TabBarSwiftUI()
}

struct Homeview: View {
    var body: some View {
        ZStack{
            Color.gray.ignoresSafeArea()
        }
    }
}

struct ContactView: View {
    @Binding var tabBarSelection: Int
    
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            
            VStack {
                Button(action: {
                    tabBarSelection = 1
                }, label: {
                    Text("Go to Home")
                })
            }
        }
    }
}
