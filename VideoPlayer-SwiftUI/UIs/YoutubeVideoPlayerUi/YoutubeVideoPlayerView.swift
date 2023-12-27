//
//  YoutubeVideoPlayerView.swift
//  VideoPlayer-SwiftUI
//
//  Created by Gaurav Tak on 27/12/23.
//

import SwiftUI

struct YoutubeVideoPlayerView: View {
    var youtubeVideoId: String
    var body: some View {
        YoutubePlayerWrapper(videoID: youtubeVideoId)
    }
}
/* the other library could be used to play the youtube videos https://github.com/SvenTiigi/YouTubePlayerKit */
