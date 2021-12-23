import SwiftUI

//import Foundation
//
//struct Episode: Identifiable {
//    var id = UUID().uuidString
//
//    var name: String
//    var season: Int
//    var episodeNumber: Int
//    var thumbnailImageURLString: String
//    var description: String
//    var length: Int
//
//    var videoURL: URL
//
//    var thumbnailURL: URL {
//        URL(string: thumbnailImageURLString)!
//    }
//}


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
        VStack(alignment: .leading) {
            HStack {
                Button {
                    showSeasonPicker = true
                } label: {
                    Group {
                        Text("Season 1")
                        Image(systemName: "chevron.down")
                    }
                    .font(.system(size: 16))
                }
                Spacer()
            }
            
            ForEach(getEpisodes(forSeason: selectedSeason)) { episode in
                VStack {
                    Text("\(episode.episodeNumber). \(episode.name)")
                }
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
