//
//  ExtractSubViews.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 02/05/2024.
//

import SwiftUI

struct ExtractSubViews: View {
    var body: some View {
        ZStack {
            Color(Color.cyan).ignoresSafeArea(.all)
            
            MyMenu
        }
    }
    
    var MyMenu: some View {
        HStack {
            AppButton(buttonText: "Hello", buttonPadding: 10, buttonRadius: 15)
            AppButton(buttonText: "Cancel", buttonPadding: 12, buttonRadius: 12)
            AppButton(buttonText: "Yes", buttonPadding: 30, buttonRadius: 20)
        }
    }
}

#Preview {
    ExtractSubViews()
}

struct AppButton: View {
    let buttonText: String;
    let buttonPadding: Int;
    let buttonRadius: Float
    
    var body: some View {
        VStack {
            Text("\(buttonText)")
                .padding()
                .background(Color.red)
                .cornerRadius(CGFloat(buttonRadius))
        }
    }
}
