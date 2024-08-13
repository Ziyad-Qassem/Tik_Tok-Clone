//
//  UserProfileHeaderView.swift
//  Tik_Tok Clone
//
//  Created by Ziyad Qassem on 13/08/2024.
//

import SwiftUI

struct UserProfileHeaderView: View {
    var body: some View {
        VStack (spacing : 25){
            VStack (spacing : 10){
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                .foregroundStyle(Color(.systemGray2))
                
                
                Text("@UserName")
                    .font(.subheadline)
                    .fontWeight(.bold)
            }
            HStack(spacing : 50){
                UserStatesView(value: 5, title: "Following")
                
                
                UserStatesView(value: 1, title: "Followers")
               
                UserStatesView(value: 7, title: "Likes")


            }
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360 , height: 35)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            }
            Divider()

           
        }
    }
}

#Preview {
    UserProfileHeaderView()
}


