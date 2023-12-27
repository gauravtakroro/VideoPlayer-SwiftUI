//
//  ContentView.swift
//  VideoPlayer-SwiftUI
//
//  Created by Gaurav Tak on 27/12/23.
//

import SwiftUI
import AVKit

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "video.square.fill")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Video Player Demo")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
