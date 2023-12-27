//
//  VideoFilePlayerViewWithOverlay.swift
//  VideoPlayer-SwiftUI
//
//  Created by Gaurav Tak on 27/12/23.
//

import SwiftUI
import AVKit

struct VideoFilePlayerViewWithOverlay: View {
    @State var player = AVPlayer(url:  Bundle.main.url(forResource: "apple12", withExtension: "mp4")!)
    var body: some View {
        Text("VideoFileVideoPlayerView")
        VideoPlayer(player: player, videoOverlay: { // 1
            VStack(alignment: .center) { // 2
                Text("Video File Advertisement")
                    .foregroundColor(Color.gray)
                    .bold()
                    .font(Font.title3)
                    .padding(.all, 10)
                Spacer()
            }})
            .frame(width: Constants.videoScreenDimensionWidth, height: Constants.videoScreenDimensionHeight, alignment : .center)
            .onAppear {
                player.play()
            }.onDisappear {
                player.pause()
            }
    }
}

