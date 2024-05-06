//
//  TextEditorSwiftUI.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 06/05/2024.
//

import SwiftUI

struct TextEditorSwiftUI: View {
    @State var text: String = ""
    @State var textList: [String] = []
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                Text("TextField Bootcamp!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                TextEditor(text: $text)
                    .colorMultiply(.white)
                    .frame(height: 300)
                    .cornerRadius(20)
                    .foregroundColor(.black)
                
                    
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
        }.padding()
            .background(.green)
    }
    
    func saveText() {
        textList.append(text)
        text = ""
    }
}

#Preview {
    TextEditorSwiftUI()
}
