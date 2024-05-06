//
//  MarkupAndDocumentation.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 06/05/2024.
//

import SwiftUI

struct MarkupAndDocumentation: View {
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts = .error
    
    enum MyAlerts {
        case error, success
    }
    
    var body: some View {
        ZStack {
            // MARK: Call an Alert
            VStack {
                Button(action: {
                    showAlert.toggle()
                }, label: {
                    Text("Call Me")
                })
                .alert(isPresented: $showAlert, content: {
                    Alert(title: Text("Close"))
                })
                
                
                // MARK: Body
                Text("Hello, World!")
                Text("Hello, World!")
                
                // MARK: Hello
                
                
                
                // EDWARD - Working copy - things to do:
                /*
                 1) hello
                 2)
                 */
                
                /// with three slash character
                helloWorld
            }
            
        }.alert(isPresented: $showAlert, content: {
            getAlert()
        })
    }
    
    private var helloWorld: some View {
        VStack {
            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
            Text("Hello, World!")
        }.padding()
            .background(.gray)
            .cornerRadius(10)
        
    }
    
    /// My customize alert
    /// this function creates and returns an alert immediately.
    ///
    /// ```
    /// getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    /// Hello
    /// ```
    ///
    /// - Parameter text: this is title for alert
    /// - Returns: Returns an alert with a title
    /// - Warning: This is no additional message in this Alert
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(title: Text("hello"), message: Text("Hello"), dismissButton: .destructive(Text("Cancel"), action: {
            }))
        case .success:
            return Alert(title: Text("hello"), message: Text("goodbuye"),
                         dismissButton: .default(Text("Got it!")))
        }
        
    }
}

#Preview {
    MarkupAndDocumentation()
}
