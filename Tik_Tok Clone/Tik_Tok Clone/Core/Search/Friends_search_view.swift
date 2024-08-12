//
//  Friends_search_view.swift
//  Tik_Tok Clone
//
//  Created by Ziyad Qassem on 12/08/2024.
//

import SwiftUI

struct Friends_search_view: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing : 16) {
                    ForEach(0 ..< 20) { user in
                        User_Cell()
                           
                    }
                }
            }
            .navigationTitle("Explore")
                .navigationBarTitleDisplayMode(.inline)
                .padding(.top)
        }
    }
}

#Preview {
    Friends_search_view()
}
