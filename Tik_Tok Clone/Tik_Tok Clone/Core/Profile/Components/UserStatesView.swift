//
//  UserStatesView.swift
//  Tik_Tok Clone
//
//  Created by Ziyad Qassem on 13/08/2024.
//

import SwiftUI

struct UserStatesView: View {
    let value : Int
    let title : String
    var body: some View {
        VStack(spacing : 5){
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.bold)
            
            Text("\(title)")
                .font(.caption)
                .foregroundStyle(.gray)
        }
        .frame(width: 80, alignment:  .center)
    }
}

#Preview {
    UserStatesView(value : 5 , title : "Followers")
}
