//
//  PickerAndPickerStyle.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 06/05/2024.
//

import SwiftUI

struct PickerAndPickerStyle: View {
    @State var selection: String = "1"
    @State var segmentSelection: String = "Female"
    let segmentOptions: [String] = ["Male", "Female", "Other"]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = .gray
        
        let attributes: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.white]
        
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: UIControl.State.selected)
    }
    
    var body: some View {
        ZStack {
            VStack {
                // Picker 1:
                Picker(selection: $selection) {
                    Text("1").tag("1")
                    Text("2").tag("2")
                    Text("3").tag("3")
                    Text("3").tag("4")
                    Text("1").tag("5")
                    Text("1").tag("6")
                } label: {
                    Text("Text")
                }.pickerStyle(.wheel)
                
                Text("My selection: \(selection)")
                
                // Picker 2:
                Picker(selection: $segmentSelection) {
                    ForEach(segmentOptions, id: \.self) { item in
                        Text(item)
                    }
                } label: {
                    Text("Text")
                }.pickerStyle(.segmented)
                
                Text("My selection: \(segmentSelection)")
                
                Spacer()
            }
            

        }
    }
}

#Preview {
    PickerAndPickerStyle()
}
