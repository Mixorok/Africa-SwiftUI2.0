//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Максим on 19.05.2021.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    //MARK: - Properties
    
    //let video: Video
    var videoSelected: String
    var videoTitle: String
    
    //MARK: - Body
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")) {
                //Text(videoTitle)
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
                ,alignment: .topLeading
            )
            
        }//:Vstack
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle, displayMode: .inline)
    }
}

//MARK: - Preview
struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "cheetah", videoTitle: "Cheetah")
        }
    }
}
