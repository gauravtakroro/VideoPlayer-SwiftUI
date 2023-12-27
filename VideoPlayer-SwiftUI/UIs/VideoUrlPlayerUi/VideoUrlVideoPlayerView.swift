//
//  VideoUrlVideoPlayerView.swift
//  VideoPlayer-SwiftUI
//
//  Created by Gaurav Tak on 27/12/23.
//

import SwiftUI
import AVKit

struct VideoUrlVideoPlayerView: View {
    
    @State var player = AVPlayer(url: URL(string: Constants.videoUrl1)!)
    var body: some View {
        VStack(spacing: 10) {
            Text("Video Url Video Player View")
            VideoPlayer(player: player).frame(width: Constants.videoScreenDimensionWidth, height: Constants.videoScreenDimensionHeight, alignment: .center)
        }.onAppear {
            player.play()
        }.onDisappear {
            player.pause()
        }
    }
    
    
}
