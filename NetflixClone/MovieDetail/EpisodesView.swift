import SwiftUI

struct EpisodesView: View {
    var episodes: [Episode]
    
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    func getEpisodes(forSeason season: Int) -> [Episode] {
        return episodes.filter { episode in
            episode.season == season
        }
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            // Season Picker
            HStack {
                Button {
                    showSeasonPicker = true
                } label: {
                    Group {
                        Text("Season \(selectedSeason)")
                        Image(systemName: "chevron.down")
                    }
                    .font(.system(size: 16))
                }
                Spacer()
            }
            
            // Episode List
            ForEach(getEpisodes(forSeason: selectedSeason)) { episode in
                VStack(alignment: .leading) {
                    HStack {
                        VideoPreviewImage(imageURL: episode.thumbnailURL, videoURL: episode.videoURL)
                            .frame(width: 120, height: 70)
                            .clipped()
                        
                        VStack(alignment: .leading) {
                            Text("\(episode.episodeNumber).\(episode.name)")
                                .font(.system(size: 16))
                            Text("\(episode.length)m")
                                .font(.system(size: 12))
                                .foregroundColor(.gray)
                        }
                        
                        Spacer()
                        
                        Image(systemName: "arrow.down.to.line.alt")
                            .font(.system(size: 20))
                    }

                    Text(episode.description)
                }
                .padding(.bottom, 20)
            }
        }
        .foregroundColor(.white)
    }
}

struct EpisodesView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView {
                EpisodesView(episodes: allExampleEpisodes, showSeasonPicker: .constant(false), selectedSeason: .constant(1))
            }
        }
    }
}
