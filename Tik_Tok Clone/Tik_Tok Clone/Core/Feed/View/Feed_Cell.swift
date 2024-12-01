//
//  Feed_Cell.swift
//  Tik_Tok Clone
//
//  Created by Ziyad Qassem on 12/08/2024.
//

import SwiftUI
import AVKit

struct Feed_Cell: View {
    var player : AVPlayer
    let post : Post
    init(post: Post ){
        self.post = post
        self.player = AVPlayer(url: URL(string: post.videuUrl)!)
    }
    var body: some View {
        ZStack {
           
            CustomVideoPlayer(player: player)
              .containerRelativeFrame([.horizontal , .vertical])
                
                
            VStack(alignment: .leading){
                Spacer()
                HStack (alignment: .bottom){
                    VStack (alignment: .leading){
                        Text("Ziyad Qassem")
                            .fontWeight(.semibold)
                        Text("this looks easy LOL!!")
                    }.font(.subheadline)
                        .foregroundStyle(.white)
                    Spacer()
                    
                    VStack (spacing: 28) {
                        Circle()
                            .frame(width: 48,height: 48)
                        
                        
                        Button {
                            
                        } label: {
                            VStack{
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 28 , height: 28)
                                    .foregroundStyle(.white)
                                Spacer().frame(height: 6)
                                Text("1000")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .bold()
                                
                            }}
                            
                        
                        
                        Button {
                            
                        } label: {
                            VStack{
                                Image(systemName: "ellipsis.bubble.fill")
                                    .resizable()
                                    .frame(width: 28 , height: 28)
                                    .foregroundStyle(.white)
                                Spacer().frame(height: 6)
                                Text("239")
                                    .font(.caption)
                                    .foregroundStyle(.white)
                                    .bold()
                                
                            }}
                       
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "bookmark.fill")
                                .resizable()
                                .frame(width: 22 , height: 28)
                                .foregroundStyle(.white)
                            
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "arrowshape.turn.up.right.fill")
                                .resizable()
                                .frame(width: 28 , height: 28)
                                .foregroundStyle(.white)
                        }
                        

                    }
                }.padding()
                
               
            }.padding(.bottom , 80)
        }.onAppear{
             player.play()
        }
    }
}

#Preview {
    Feed_Cell(post: Post(id: NSUUID().uuidString, videuUrl: ""))
}
