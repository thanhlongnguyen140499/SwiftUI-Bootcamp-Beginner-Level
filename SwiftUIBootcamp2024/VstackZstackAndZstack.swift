//
//  VstackZstackAndZstack.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 11/03/2024.
//

import SwiftUI

struct VstackZstackAndZstack: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
//        VStack (alignment: .trailing, spacing: 10, content:  {
//            Ellipse()
//                .fill(Color.pink)
//                .frame(width: 50, height: 100)
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 100, height: 100)
//            Rectangle()
//                .fill(Color.gray)
//                .frame(width: 100, height: 100)
//            HStack {
//                Circle()
//                    .fill(Color.blue)
//                    .frame(width: 100, height: 100)
//                Circle()
//                    .fill(Color.blue)
//                    .frame(width: 100, height: 100)
//            }
//            
//        })
        
//        ZStack (alignment: .bottom, content:{
//            VStack {
//                ForEach(0 ..< 3) { item in
//                    VStack {
//                        HStack {
//                            VStack {
//                                Rectangle().fill(Color.red).frame(width: 50, height: 100)
//                            }
//                            
//                            
//                            Rectangle().fill(Color.red).frame(width: 100, height: 50)
//                        }
//                    }
//                }
//                
//                Rectangle().fill(.yellow)
//                    .frame(width: 50, height: 100)
//            }
//        })
        
        VStack(alignment: .leading, spacing: 40, content: {
            ZStack {
                Circle().fill(Color.red).frame(width: 50, height: 50)
                
                Text("1").foregroundStyle(.white).font(.headline).bold()
            }
            
            Text("2").font(.headline).bold().background(
                Circle().frame(width: 50, height: 50)
            )
        })
       
    }
}

#Preview {
    VstackZstackAndZstack()
}
