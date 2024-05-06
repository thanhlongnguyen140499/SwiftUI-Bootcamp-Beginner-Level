//
//  ColorPickerSwiftUI.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 06/05/2024.
//

import SwiftUI

struct ColorPickerSwiftUI: View {
    @State var backgroundColor: Color = .white
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea(.all)
            
            VStack {
                ColorPicker(selection: $backgroundColor, label: {
                    Text("Label")
                        .foregroundStyle(.white)
                })
                .padding()
                .background(.black)
                .cornerRadius(10)
                .padding(.horizontal, 100)
            }
        }
    }
}

#Preview {
    ColorPickerSwiftUI()
}
