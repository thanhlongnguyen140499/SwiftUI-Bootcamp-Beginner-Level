//
//  TextFieldSwiftUI.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 06/05/2024.
//

import SwiftUI

struct TextFieldSwiftUI: View {
    @State var text: String = ""
    @State var textList: [String] = []
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text("TextField Bootcamp!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                TextField("Type something here", text: $text)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.gray.opacity(0.5  ).cornerRadius(10))
//                    .textFieldStyle(.roundedBorder)
                    
                    
                Button(action: {
                    saveText()
                }, label: {
                    Text("save".uppercased()).foregroundStyle(.white).fontWeight(.bold)
                        .font(.headline)
                }).padding()
                    .frame(maxWidth: .infinity)
                    .background(.blue)
                    .cornerRadius(10)
                    
                
                ForEach(textList, id: \.self) { item in
                    Text("\(item)")
                }
                
                Spacer()
            }
            .padding()
        }
    }
    
    func saveText() {
        textList.append(text)
        text = ""
    }
}

#Preview {
    TextFieldSwiftUI()
}
