//
//  Notification_Cell.swift
//  Tik_Tok Clone
//
//  Created by Ziyad Qassem on 12/08/2024.
//

import SwiftUI

struct Notification_Cell: View {
    var body: some View {
        HStack(spacing : 15){
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 35 , height: 35)
                .foregroundStyle(Color(.systemGray5))
            HStack {
                Text("Ziyad Qassem ")
                    .font(.subheadline)
                    .fontWeight(.bold) +
                
                Text(" just liked your one of your photos. ")
                    .font(.footnote) +
                
                Text("2d")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
           
             Spacer()
                Rectangle()
                .frame(width: 48 , height: 48)
                .clipShape(RoundedRectangle(cornerRadius: 6))
            
          
            
            
                
        }
        .padding(.horizontal)
    }
}

#Preview {
    Notification_Cell()
}
