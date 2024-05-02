//
//  Videostrying.swift
//  SciSparkAppNew
//
//  Created by Sruthy Mammen on 5/2/24.
//

import Foundation

import SwiftUI
import AVKit

struct VideoPlayerView: UIViewControllerRepresentable {
    var videoURL: URL

    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let player = AVPlayer(url: videoURL)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        return playerViewController
    }

    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
    }
}

struct Videotrying_Previews: PreviewProvider {
    static var previews: some View {
        Videotrying()
    }
}

struct Videotrying: View {
    var body: some View {
        VideoPlayerView(videoURL: Bundle.main.url(forResource: "train", withExtension: "mp4")!)
            .aspectRatio(16/9, contentMode: .fit)
            .frame(width: UIScreen.main.bounds.width * 0.9)
    }
}
