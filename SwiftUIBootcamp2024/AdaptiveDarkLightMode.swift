//
//  AdaptiveDarkLightMode.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 06/05/2024.
//

import SwiftUI

struct AdaptiveDarkLightMode: View {
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        Text("Hello, World!")
            .foregroundStyle(.primary)
        Text("Hello, World!")
            .foregroundStyle(.secondary)
        Text("Hello, World!")
            .foregroundStyle(.black)
        Text("Hello, World!")
            .foregroundStyle(Color("AdaptiveColor"))
        Text("Hello, World!")
            .foregroundStyle(colorScheme == .light ? .yellow : .green)
    }
}

#Preview {
    AdaptiveDarkLightMode()
}

#Preview {
    AdaptiveDarkLightMode().preferredColorScheme(.dark)
}
