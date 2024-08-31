//
//  Feed_View.swift
//  Tik_Tok Clone
//
//  Created by Ziyad Qassem on 12/08/2024.
//

import SwiftUI

struct Feed_View: View {
    @StateObject var viewModel = FeedViewModel()

    var body: some View {
        ScrollView{
            LazyVStack(spacing : 0){
                ForEach(viewModel.posts) { post in
                 Feed_Cell(post: post)
                    
                    
                }.scrollTargetLayout()
            }
        }.scrollTargetBehavior(.paging)
            .ignoresSafeArea()
    }
}

#Preview {
    Feed_View()
}
