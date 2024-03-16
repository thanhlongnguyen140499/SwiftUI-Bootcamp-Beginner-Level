//
//  LazyGridAndGridItems.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 16/03/2024.
//

import SwiftUI

struct LazyGridAndGridItems: View {
    var body: some View {
        
        //        EXAMPLE 01
        
        //        let columns: [GridItem] = [
        //            GridItem(.fixed(50)),
        //            GridItem(.flexible()),
        //            GridItem(.fixed(50)),
        //            GridItem(.fixed(75)),
        //            GridItem(.fixed(50)),
        //        ]
        
        let columns: [GridItem] = [
            GridItem(.adaptive(minimum: 50, maximum: 200), spacing: nil),
            //            GridItem(.adaptive(minimum: 10, maximum: 100)),
            //            GridItem(.adaptive(minimum: 30, maximum: 100)),
        ]
        
        let rows: [GridItem] = [
            GridItem(.adaptive(minimum: 100, maximum: 200), spacing: nil),
        ]
        
        
        //        EXAMPLE 02
        //
        //        ScrollView(content: {
        //            Rectangle().fill(Color.white).frame(height: 400)
        //                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        //
        //            LazyVGrid(columns: columns,
        //                      alignment: .center,
        //                      spacing: nil,
        //                      pinnedViews: [.sectionHeaders, .sectionFooters],
        //                      content: {
        //                Section(header: Text("Section 01 with Header"), content: {
        //                    ForEach(0..<9, content: {_ in
        //                        Rectangle().fill(.orange)
        //                            .frame(height: 150)
        //                    })
        //                })
        //
        //                ForEach(0..<9, content: {_ in
        //                    Rectangle().fill(.blue)
        //                        .frame(height: 150)
        //                })
        //
        //                Section(footer: Text("Section 01 with Header"), content: {
        //                    ForEach(0..<9, content: {_ in
        //                        Rectangle().fill(.orange)
        //                            .frame(height: 150)
        //                    })
        //                })
        //            })
        //        })
        
        //      EXAMPLE 03
        
        ScrollView(.horizontal, content: {
            LazyHGrid(rows: rows, pinnedViews: [.sectionFooters,.sectionHeaders], content: {
                
                Section(header: Text("Section row 01"), content: {
                    ForEach(1..<10) {index in
                        Rectangle().fill(.white)
                            .frame(width: 100)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    }
                })
                
                ForEach(1..<10) {index in
                    Rectangle().fill(.black)
                        .frame(width: 100)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                }
                
                Section(footer: Text("Section row 02"), content: {
                    ForEach(1..<10) {index in
                        Rectangle().fill(.white)
                            .frame(width: 100, height: 100)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    }
                })
            })
        })
        
        
    }
}

#Preview {
    LazyGridAndGridItems()
}
