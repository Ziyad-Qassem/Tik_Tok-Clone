//
//  CurrentUserProfileView.swift
//  Tik_Tok Clone
//
//  Created by Ziyad Qassem on 13/08/2024.
//

import SwiftUI

struct CurrentUserProfileView: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack(spacing : 5) {
                    UserProfileHeaderView()
                    
                    PostsGridView()
                }.padding(.top)
            }
                       .navigationTitle("Profile")
                       .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

#Preview {
    CurrentUserProfileView()
}
