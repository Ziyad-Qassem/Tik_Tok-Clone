//
//  Notification_view.swift
//  Tik_Tok Clone
//
//  Created by Ziyad Qassem on 12/08/2024.
//

import SwiftUI

struct Notification_view: View {
    var body: some View {
        NavigationStack {
            ScrollView{
            LazyVStack(spacing : 20) {
                ForEach(0 ..< 20) { notication in
                    Notification_Cell()
                }
            }
            }.padding(.top)
            .navigationTitle("Notifications")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    Notification_view()
}
