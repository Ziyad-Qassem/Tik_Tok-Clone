//
//  PostsGridView.swift
//  Tik_Tok Clone
//
//  Created by Ziyad Qassem on 13/08/2024.
//

import SwiftUI

struct PostsGridView: View {
    private let items = [
        GridItem(.flexible() , spacing: 2),
        GridItem(.flexible() , spacing: 2),
        GridItem(.flexible() , spacing: 2)
    ]
    private let post_Width = ((UIScreen.main.bounds.width - 15 ) / 3) - 2
    var body: some View {
        LazyVGrid(columns: items , spacing:  2) {
            ForEach(0 ..< 20) { post in
                Rectangle()
                    .frame(width: post_Width , height: 150)
                    .clipped()
                
            }
        }
    }
}

#Preview {
    PostsGridView()
}
