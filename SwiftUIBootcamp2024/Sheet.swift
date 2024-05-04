//
//  Sheet.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 04/05/2024.
//

import SwiftUI

struct Sheet: View {
    @State var showSheet: Bool = false
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea(.all)
            
            Button(action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
            })
        }
//        .sheet(isPresented: $showSheet, content: {
//            RedSheet()
//        })
        .fullScreenCover(isPresented: $showSheet, content: {
            RedSheet()
        })
    }
}

struct RedSheet: View {
    @Environment(\.presentationMode) var redSheetMode
    
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea(.all)
            
            VStack {
                Button(action: {
                    redSheetMode.wrappedValue.dismiss()
                }, label: {
                    Text("Hide")
                })
            }
            
            
        }
    }
}

#Preview {
    Sheet()
}
