//
//  IfLetGuardSwiftUI.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 12/5/24.
//

import SwiftUI

struct IfLetGuardSwiftUI: View {
    @State var currentUserID: String? = "testUser123"
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding!")
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe coding")
            .onAppear(perform: {
                // loadData()
                loadData2()
            })
        }
    }
    
    func loadData( ) {
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3, execute: DispatchWorkItem.init(block: {
                displayText = "This is the new Data! User id is: \(userID)"
                isLoading = false
            }))
        } else {
            displayText = "Error. There is no User ID!"
        }
    }
    
    func loadData2( ) {
        guard let userID = currentUserID else {
            displayText = "Error. There is no User ID!"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3, execute: DispatchWorkItem.init(block: {
            displayText = "This is the new Data! User id is: \(userID)"
            isLoading = false
        }))
    }
}

#Preview {
    IfLetGuardSwiftUI()
}
