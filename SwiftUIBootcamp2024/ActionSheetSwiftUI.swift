//
//  ActionSheetSwiftUI.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 05/05/2024.
//

import SwiftUI

struct ActionSheetSwiftUI: View {
    @State var showActionSheet: Bool = false
    @State var backgroundColor: Color = .white
    
    enum MyActionSheet {
        case isShare
        case isSave
    }
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack {
                HStack {
                    Circle().frame(width: 30, height: 30)
                    Text("@username")
                    Spacer()
                    
                    Button(action: {
                        showActionSheet.toggle()
                    }, label: {
                        Image(systemName: "ellipsis")
                            .foregroundColor(.black)
                            .font(.largeTitle)
                    })
                    
                }
                
                Rectangle().frame(height: 300)
            }
            .confirmationDialog("This is the title", isPresented: $showActionSheet) {
                            Button("Red") { backgroundColor = .red }
                            Button("Green") { backgroundColor = .green }
                            Button("Yellow") { backgroundColor = .yellow }
                            Button("Remove color", role: .destructive) { backgroundColor = .clear }
                            Button("Cancel", role: .cancel) { }
                        } message: {
                            Text("This is the message")
                        }
        }
    }
    
 
}

#Preview {
    ActionSheetSwiftUI()
}
