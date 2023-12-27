//
//  VideoFileVideoPlayerView.swift
//  VideoPlayer-SwiftUI
//
//  Created by Gaurav Tak on 27/12/23.
//

import SwiftUI
import AVKit

struct VideoFileVideoPlayerView: View {
    @State var player = AVPlayer(url:  Bundle.main.url(forResource: "apple12", withExtension: "mp4")!)
    var body: some View {
        Text("VideoFileVideoPlayerView")
        VideoPlayer(player: player)
            .frame(width: Constants.videoScreenDimensionWidth, height: Constants.videoScreenDimensionHeight, alignment : .center)
            .onAppear {
                player.play()
            }.onDisappear {
                player.pause()
            }
    }
}

