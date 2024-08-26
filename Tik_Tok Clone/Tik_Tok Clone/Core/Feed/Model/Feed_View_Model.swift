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
        "https://videos.pexels.com/video-files/1093662/1093662-hd_1920_1080_30fps.mp4",
    "https://videos.pexels.com/video-files/4434242/4434242-uhd_1440_2560_24fps.mp4" ,
    "https://videos.pexels.com/video-files/2759477/2759477-uhd_2560_1440_30fps.mp4" ,
    "https://videos.pexels.com/video-files/8859849/8859849-uhd_1440_2560_25fps.mp4",
    "https://videos.pexels.com/video-files/14538114/14538114-hd_1080_1920_24fps.mp4" ,
    "https://videos.pexels.com/video-files/7297870/7297870-hd_1080_1920_30fps.mp4"
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
