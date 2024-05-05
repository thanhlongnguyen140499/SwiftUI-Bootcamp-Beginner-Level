//
//  ContextMenuSwiftUI.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 05/05/2024.
//

import SwiftUI

struct ContextMenuSwiftUI: View {
    @State var background: Color = .green
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 20) {
                Image(systemName: "house.fill")
                    .font(.title2)
                    .foregroundColor(.white)
                Text("Edward Nguyen")
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
            }
            .foregroundColor(.blue)
            .padding(30)
            .background(background)
            .cornerRadius(20)
            .contextMenu(ContextMenu(menuItems: {
                Button(action: {
                    background = .red
                }, label: {
                    Text("Red")
                })
                Button(action: {
                    background = .yellow
                }, label: {
                    Text("Yellow")
                })
                Button(role: .destructive, action: {
                    background = .green
                }, label: {
                    Text("Cancel")
                    Image(systemName: "xmark")
                })
                    
            }))
        }
    }
}

#Preview {
    ContextMenuSwiftUI()
}
