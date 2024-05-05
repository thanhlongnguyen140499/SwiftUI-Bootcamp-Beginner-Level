//
//  ListSwiftUI.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 05/05/2024.
//

import SwiftUI

struct ListSwiftUI: View {
    @State var fruitList: [String] = ["Apple", "Banana", "Watermelon", "Pinaple"]
    @State var carList: [String] = ["BMW", "Merc", "Vinfast", "Peugoet", "Mazda", "Kia"]
    
    var body: some View {
        NavigationView(content: {
            List {
                Section (header: HStack{
                    Text("Fruits")
                    Image(systemName: "flame.fill").foregroundColor(.orange)
                        .font(.headline)
                }, content: {
                    
                    ForEach(fruitList, id: \.self) { fruit in
                        Text("\(fruit.capitalized)")
                    }
                    .onDelete(perform: handleItemDeleted)
                    .onMove(perform: handleItemMoved)
                    
                })
                
                Section (header: HStack{
                    Text("Car")
                    Image(systemName: "flame").foregroundColor(.blue)
                        .font(.headline)
                }, content: {
                    
                    ForEach(carList, id: \.self) { fruit in
                        Text("\(fruit.capitalized)")
                    }
                    .onDelete(perform: handleItemDeleted)
                    .onMove(perform: handleItemMoved)
                })
                .listRowSpacing(20)
                .listRowBackground(Color.brown)
                .listStyle(.sidebar)
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Grocery list")
            .toolbar(content: {
                ToolbarItemGroup(placement: .topBarLeading) {
                    EditButton()
                }
                
                ToolbarItemGroup(placement: .topBarTrailing) {
                    addButton
                }
            })
            
            NavigationLink("Hello", destination: Text("Destination"))
        })
    }
    
    var addButton: some View {
        Button(action: handleItemAdded, label: {
            Text("Add")
        })
    }
    
    func handleItemDeleted(indexSet: IndexSet) {
        fruitList.remove(atOffsets: indexSet)
    }
    
    func handleItemMoved(indices: IndexSet, newOffset: Int) {
        fruitList.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func handleItemAdded() {
        fruitList.append("Queen of Fruit")
    }
}

#Preview {
    ListSwiftUI()
}
