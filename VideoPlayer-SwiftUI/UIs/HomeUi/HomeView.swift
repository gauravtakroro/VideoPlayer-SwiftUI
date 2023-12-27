//
//  HomeView.swift
//  VideoPlayer-SwiftUI
//
//  Created by Gaurav Tak on 27/12/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "video.square.fill")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Video Player Demo").padding(.bottom, 20)
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

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
