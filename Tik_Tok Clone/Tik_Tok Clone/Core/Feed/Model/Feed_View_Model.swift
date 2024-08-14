//
//  Feed_View_Model.swift
//  Tik_Tok Clone
//
//  Created by Ziyad Qassem on 15/08/2024.
//

import Foundation
class FeedViewModel :ObservableObject {
    @Published var posts = [Post]()
     let videoUrls : [String]  =  [
    "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4" ,
    "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4" ,
    "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4" ,
    "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
    "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4" ,
    "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4"
    ]
    
    init( ){
        fetchPosts()
    }
    func fetchPosts() {
        self.posts = [
            .init(id: NSUUID().uuidString , videuUrl : videoUrls[0]),
            .init(id: NSUUID().uuidString, videuUrl: videoUrls[1]),
            .init(id: NSUUID().uuidString , videuUrl : videoUrls[2]),
            .init(id: NSUUID().uuidString, videuUrl: videoUrls[3]),
            .init(id: NSUUID().uuidString , videuUrl : videoUrls[4]),
            .init(id: NSUUID().uuidString, videuUrl: videoUrls[5]),
            ]
    }
}
