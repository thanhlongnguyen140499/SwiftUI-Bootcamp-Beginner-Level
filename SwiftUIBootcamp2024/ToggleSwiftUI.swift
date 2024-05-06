//
//  Toggle.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 06/05/2024.
//

import SwiftUI

struct ToggleSwiftUI: View {
    @State var isEnable: Bool = false
    var body: some View {
        ZStack {
            VStack {
                Toggle(isOn: $isEnable, label: {
                    Text("Location")
                })
                
                Text("\(isEnable.description)")
            }
        }
        .padding(.horizontal, 50)
    }
}

#Preview {
    ToggleSwiftUI()
}
