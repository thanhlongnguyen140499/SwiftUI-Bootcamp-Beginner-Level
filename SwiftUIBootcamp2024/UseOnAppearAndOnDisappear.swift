//
//  UseOnAppearAndOnDisappear.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 12/05/2024.
//

import SwiftUI

struct UseOnAppearAndOnDisappear: View {
    @State var myText: String = "Start text."
    @State var count: Int = 1
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Count: \(count)")
                
                LazyVStack(content: {
                    ForEach(1...50, id: \.self) { index in
                        RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                            .frame(height: 75)
                            .padding(5)
                            .onAppear(perform: {
                                count += 1
                                myText = "Count: \(count)"
                            })
                            .onDisappear(perform: {
                                count -= 1
                                myText = "Count: \(count)"
                            })
                    }
                })
                
            }.onAppear(perform: {
                // 5 seconds after we excute this func
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 5, execute: DispatchWorkItem.init(block: {
                    myText = "New textss"
                }))
                
            })
            .onDisappear(perform: {
                myText = "Ending text"
            })
            .navigationTitle(myText)
        }
        
    }
}

#Preview {
    UseOnAppearAndOnDisappear()
}
