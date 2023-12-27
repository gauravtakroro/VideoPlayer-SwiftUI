//
//  YoutubePlayerWrapper.swift
//  VideoPlayer-SwiftUI
//
//  Created by Gaurav Tak on 28/12/23.
//

import YouTubeiOSPlayerHelper
import SwiftUI

struct YoutubePlayerWrapper : UIViewRepresentable {
    var videoID : String
    
    func makeUIView(context: Context) -> YTPlayerView {
        let playerView = YTPlayerView()
        playerView.load(withVideoId: videoID)
        return playerView
    }
    
    func updateUIView(_ uiView: YTPlayerView, context: Context) {
        //
    }
}
