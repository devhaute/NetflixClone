import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    var categories: [String]
    
    // MovieDetail View
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    
    // Personalization
    var currentEpisode: CurrentEpisodeInfo?
    var defaultCurrentEpisode: CurrentEpisodeInfo
    
    var creators: String
    var cast: String
    
    var episode: [Episode]?
    
    var promotionHeadLine: String?
}

struct CurrentEpisodeInfo: Hashable, Equatable {
    var episodeName: String
    var description: String
    var season: Int
    var episode: Int
}
