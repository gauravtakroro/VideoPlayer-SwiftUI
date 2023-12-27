//
//  HomeViewModel.swift
//  VideoPlayer-SwiftUI
//
//  Created by Gaurav Tak on 27/12/23.
//

import Foundation

enum VideoViewType: Int {
    case VideoFilePlayer = 1
    case VideoUrlPlayer = 2
    case YoutubeVideoPlayer = 3
    case VideoFilePlayerWithOverlay = 4
}

class HomeViewModel: ObservableObject {
    @Published var showNextVideoView = false
    var nextVideoViewType: VideoViewType = .VideoFilePlayer
}


