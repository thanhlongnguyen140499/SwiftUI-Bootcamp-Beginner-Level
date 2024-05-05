//
//  Alert.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 05/05/2024.
//

import SwiftUI

struct AlertSwiftUI: View {
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
    @State var backgroundColor: Color = .green
    
    enum MyAlerts {
        case error, success
    }
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack {
                Button(action: {
                    showAlert.toggle()
                    alertType = .success
                }, label: {
                    Text("Show")
                })
                
                Button(action: {
                    showAlert.toggle()
                    alertType = .error            }, label: {
                    Text("Show")
                })
            }
           
        }
        .alert(isPresented: $showAlert, content: {
            getAlert()
        })
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(title: Text("hello"), message: Text("Hello"), dismissButton: .destructive(Text("Cancel"), action: {
                backgroundColor = .red
            }))
        case .success:
            return Alert(title: Text("hello"), message: Text("goodbuye"),
                          dismissButton: .default(Text("Got it!")))
        case nil:
            return Alert(title: Text("hello"), message: Text("goodbuye"),
                          dismissButton: .default(Text("Got it!")))
        }
        
    }
}

#Preview {
    AlertSwiftUI()
}
