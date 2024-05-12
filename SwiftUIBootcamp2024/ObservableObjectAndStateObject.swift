//
//  ObservableObjectAndStateObject.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 12/5/24.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let color: Color
}

class FruitViewModel: ObservableObject {
    @Published var fruits: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        isLoading = true
        let fruit1 = FruitModel(name: "Watermelon", color: .red)
        let fruit2 = FruitModel(name: "Apple", color: .green)
        let fruit3 = FruitModel(name: "Orange", color: .orange)
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3, execute: {
            self.isLoading = false
            self.fruits.append(fruit1)
            self.fruits.append(fruit2)
            self.fruits.append(fruit3)
        })
        
    }
    
    func deleteFruit(index: IndexSet) {
        fruits.remove(atOffsets: index)
    }
}

struct ObservableObjectAndStateObject: View {
    
    // StateObject -> using for creation or init (when this struc reloading, no need to reload this StateObject)
    // ObservedObject -> Use this for SubView
    @StateObject var fruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruits) {fruit in
                        Text(fruit.name)
                            .foregroundStyle(fruit.color)
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                    .navigationTitle("Fruits")
                }
            }
            .listStyle(.grouped)
            .toolbar(content: {
                ToolbarItem {
                    NavigationLink {
                        RandomSubView(fruitViewModel: fruitViewModel)
                    } label: {
                        Image(systemName: "arrow.right")
                    }
                }
            })
        }
    }
}

struct RandomSubView: View {
    @Environment(\.presentationMode) var subViewNavigation
    @ObservedObject var fruitViewModel: FruitViewModel
    @State var textStr: String = ""

    var body: some View {
        ZStack {
            Color.brown.ignoresSafeArea(.all)
            
            VStack {
                
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruits) { fruit in
                        Text(fruit.name)
                    }
                }
                
                Text("Go Back")
                    .onTapGesture {
                        subViewNavigation.wrappedValue.dismiss()
                    }
                    .foregroundColor(.red)
                    .fontWeight(.bold)
                
                TextField("Type something here", text: $textStr)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.gray.opacity(0.5  ).cornerRadius(10))
//                    .textFieldStyle(.roundedBorder)
            }
        }
    }
}

#Preview {
    ObservableObjectAndStateObject()
//    RandomSubView()
}
