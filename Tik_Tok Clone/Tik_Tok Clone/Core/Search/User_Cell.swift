//
//  User_Cell.swift
//  Tik_Tok Clone
//
//  Created by Ziyad Qassem on 12/08/2024.
//

import SwiftUI

struct User_Cell: View {
    var body: some View {
       
            HStack(spacing : 15){
               Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 40 , height: 40)
                    .foregroundStyle(Color(.systemGray))
               
                VStack(alignment : .leading){
                    Text("Ziyad Qassem")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    Text("Ziyad Qassem")
                        .font(.footnote)
                }
                Spacer()
            } .padding(.horizontal )
    }
}

#Preview {
    User_Cell()
}
