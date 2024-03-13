//
//  ForEachLoopsInSwift.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 14/03/2024.
//

import SwiftUI

struct ForEachLoopsInSwift: View {
    let items: [String] = ["Gud", "Good", "OK"]
    
    var body: some View {
        VStack {
            ForEach(1..<10) {
                index in
                Text("Number: \(index)")
            }
            
            ForEach(items.indices) {
                index in
                Text("Items[\(index)]: \(items[index])")
                Circle().fill(.blue)
                    .frame(width: 30, height: 30)
            }
        }
        
    }
}

#Preview {
    ForEachLoopsInSwift()
}
