//
//  AddingNavigation.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 04/05/2024.
//

import SwiftUI

struct AddingNavigation: View {
    @State var isShowButton: Bool = false
    
    var body: some View {
        ZStack {
     
                VStack {
                    Button(action: {
                        withAnimation(Animation.linear
                            .repeatForever()
                        ) {
                            isShowButton.toggle()
                        }
                        
                    }, label: {
                        Text("Button")
                    })
                    
                    Spacer()
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .fill(isShowButton ? Color.green : Color.blue)
                        .frame(width: 100, height: 100)
                        .rotationEffect(
                            Angle(degrees: isShowButton ? 360: 0)
                                )
                        .offset(y: isShowButton ? 300 : 0)
                    
                    Spacer()
                    
                }
                
                
            }
           
        }
    
}

#Preview {
    AddingNavigation()
}
