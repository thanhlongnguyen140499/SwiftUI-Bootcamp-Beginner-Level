//
//  InitializerView.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 13/03/2024.
//

import SwiftUI

struct InitializerView: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if (fruit == .apple) {
            self.title = "Apples"
            self.backgroundColor = Color.red
        } else {
            self.title = "Watermelon"
            self.backgroundColor = Color.orange
        }
    }
    
    enum Fruit {
        case apple
        case pinaple
        case watermelon
    }
    
    var body: some View {
        VStack(spacing: 12) {
            Text("\(count)").font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            
            Text("\(title)")
                .font(.headline)
                .foregroundColor(.white)
            
        }.frame(width:  150,height: 150)
            .background(backgroundColor)
            .cornerRadius(10)
    }
}

#Preview {
    VStack {
        List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
            InitializerView(count: 2, fruit: .apple)
        }
//        InitializerView(count: 2, fruit: .pinaple)
//        InitializerView(count: 2, fruit: .pinaple)
//        InitializerView(count: 2, fruit: .pinaple)
//        InitializerView(count: 2, fruit: .pinaple)
//        InitializerView(count: 2, fruit: .pinaple)
//        InitializerView(count: 2, fruit: .pinaple)
//        InitializerView(count: 2, fruit: .pinaple)
//        InitializerView(count: 2, fruit: .pinaple)
//        InitializerView(count: 2, fruit: .pinaple)
    }
}
