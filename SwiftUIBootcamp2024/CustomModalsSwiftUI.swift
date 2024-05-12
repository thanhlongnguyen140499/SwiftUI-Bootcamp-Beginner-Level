//
//  CustomModalsSwiftUI.swift
//  SwiftUIBootcamp2024
//
//  Created by Edward Nguyen on 12/5/24.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followers: Int
    let isVerified: Bool
}

struct CustomModalsSwiftUI: View {
    @State var users: [UserModel] = [
        UserModel(displayName: "Edward Nguyen", userName: "user01@gmail.com", followers: 1305, isVerified: true),
        UserModel(displayName: "Edward", userName: "user02@yopmail.com", followers: 405, isVerified: false),
        UserModel(displayName: "Richard", userName: "user03@yahoo.com", followers: 105, isVerified: true),
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    VStack(alignment: .leading) {
                        HStack (alignment: .center, content: {
                            Circle().frame(width: 50)
                            Text("\(user.displayName)")
                                .font(.headline)
                            
                            Spacer()
                            if user.isVerified {
                                Image(systemName: "checkmark.seal.fill")
                                    .foregroundColor(.blue)
                            }
                            VStack {
                                Text("Followers")
                                Text("\(user.followers)")
                            }
                            

                        })
                        Text(user.userName)
                    }
                }
            }
            .navigationTitle("Users")
            .listStyle(.sidebar)
        }

    }
}

#Preview {
    CustomModalsSwiftUI()
}
