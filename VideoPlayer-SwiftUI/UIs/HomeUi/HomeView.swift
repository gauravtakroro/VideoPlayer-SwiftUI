//
//  HomeView.swift
//  VideoPlayer-SwiftUI
//
//  Created by Gaurav Tak on 27/12/23.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var homeViewModel = HomeViewModel()
    func buildView() -> some View {
        print("buildView---called")
        // return you destination
        if homeViewModel.nextVideoViewType == .VideoFileView {
            return AnyView(VideoFileVideoPlayerView())
        } else if homeViewModel.nextVideoViewType == .VideoUrlView {
            return AnyView(VideoUrlVideoPlayerView())
        } else if homeViewModel.nextVideoViewType == .YoutubeVideoView {
            return AnyView(YoutubeVideoPlayerView())
        } else {
            return AnyView(HomeView())
        }
    }
    
    var body: some View {
        GeometryReader { proxy in
            NavigationView {
                
                ZStack(alignment: .top) {
                    if homeViewModel.showNextVideoView {
                        NavigationLink(destination: buildView(), isActive: $homeViewModel.showNextVideoView) {
                            EmptyView()
                        }
                    }
                    
                    VStack(spacing: 25) {
                        VStack {
                            Image(systemName: "video.square.fill")
                                .imageScale(.large)
                                .foregroundColor(.accentColor)
                            Text("Video Player Demo")
                        }
                        Button {
                            print("VideoFile Video Player Tapped")
                        } label: {
                            Text("Launch VideoFile Video Player").bold().underline()
                        }
                        
                        Button {
                            print("VideoUrl Video Player Tapped")
                        } label: {
                            Text("Launch VideoUrl Video Player").bold().underline()
                        }
                        
                        Button {
                            print("YouTubeUrl Video Player Tapped")
                        } label: {
                            Text("Launch YouTubeUrl Video Player").bold().underline()
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
