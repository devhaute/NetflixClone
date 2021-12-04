import SwiftUI

struct CurrentEpisodeInformation: View {
    let movie: Movie
    
    var episodeInfoDisplay: String {
        if let current = movie.currentEpisode {
            return "S\(current.season):E\(current.episode) \(current.episodeName)"
        } else {
            return "S\(movie.defaultCurrentEpisode.season):E\(movie.defaultCurrentEpisode.episode) \(movie.defaultCurrentEpisode.episodeName)"
        }
    }
    
    var episodeDescriptionDisplay: String {
        if let current = movie.currentEpisode {
            return current.description
        } else {
            return movie.defaultCurrentEpisode.description
        }
    }
    
    var body: some View {
        Group {
            Text(episodeInfoDisplay)
                .bold()
                .padding(.vertical, 4)
            
            Text(episodeDescriptionDisplay)
                .font(.subheadline)
                .padding(.top, 5)
        }
    }
}


struct CurrentEpisodeInformation_Previews: PreviewProvider {
    static var previews: some View {
        VStack(alignment: .leading, spacing: 0) {
            CurrentEpisodeInformation(movie: exampleMovie1)
        }
    }
}
