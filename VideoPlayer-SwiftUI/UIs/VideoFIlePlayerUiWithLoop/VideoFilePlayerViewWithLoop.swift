//
//  VideoFilePlayerViewWithLoop.swift
//  VideoPlayer-SwiftUI
//
//  Created by Gaurav Tak on 28/12/23.
//

import SwiftUI
import AVKit

struct VideoFilePlayerViewWithLoop: View {
    @State var player = AVPlayer(url:  Bundle.main.url(forResource: "apple12", withExtension: "mp4")!)
    var body: some View {
        VideoPlayer(player: player)
            .frame(width: Constants.videoScreenDimensionWidth, height: Constants.videoScreenDimensionHeight, alignment: .center)
            .onAppear {
                addObserver()
                player.play()
            }
            .onDisappear {
                removeObserver()
                player.pause()
            }
    }
    
    func addObserver() {
        NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime,
                                               object: player.currentItem,
                                               queue: nil) { _ in
            player.seek(to: .zero)
            player.play()
        }
    }
    
    func removeObserver() {
        NotificationCenter.default.removeObserver(self,
                                                  name: .AVPlayerItemDidPlayToEndTime,
                                                  object: nil)
    }
}
