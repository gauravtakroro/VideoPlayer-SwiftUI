//
//  HomeViewModel.swift
//  VideoPlayer-SwiftUI
//
//  Created by Gaurav Tak on 27/12/23.
//

import Foundation

enum VideoViewType: Int {
    case VideoFileView = 1
    case VideoUrlView = 2
    case YoutubeVideoView = 3
}

class HomeViewModel: ObservableObject {
    @Published var showNextVideoView = false
    var nextVideoViewType: VideoViewType = .VideoFileView
}


