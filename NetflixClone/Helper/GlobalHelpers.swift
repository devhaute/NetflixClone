import SwiftUI

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "DARK",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 4,
    currentEpisode: exampleEpisodeInfo,
    defaultCurrentEpisode: exampleEpisodeInfo,
    creators: "Louis Hofmann, Oliver Mascucci, jordis Triebel",
    cast: "Watch Season 6 Now",
    moreLikeThisMovies: [exampleMovie2, exampleMovie3, exampleMovie4],
    promotionHeadLine: "New episodes coming soon"
)
let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Travelers",
    thumbnailURL: URL(string: "https://picsum.photos/200/300/")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    defaultCurrentEpisode: exampleEpisodeInfo,
    creators: "Louis Hofmann, Oliver Mascucci, jordis Triebel",
    cast: "Watch Season 6 Now",
    moreLikeThisMovies: []
)
let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    defaultCurrentEpisode: exampleEpisodeInfo,
    creators: "Louis Hofmann, Oliver Mascucci, jordis Triebel",
    cast: "Watch Season 6 Now",
    moreLikeThisMovies: []
)
let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "Alone",
    thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    numberOfSeasons: 2,
    defaultCurrentEpisode: exampleEpisodeInfo,
    creators: "Louis Hofmann, Oliver Mascucci, jordis Triebel",
    cast: "Watch Season 6 Now",
    moreLikeThisMovies: [],
    promotionHeadLine: "Watch Season 2 Now"
)
let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "Hanibal",
    thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020, rating: "TV-MA",
    defaultCurrentEpisode: exampleEpisodeInfo,
    creators: "Louis Hofmann, Oliver Mascucci, jordis Triebel",
    cast: "Watch Season 6 Now",
    moreLikeThisMovies: []
)
let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
    categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi TV"],
    year: 2020,
    rating: "TV-MA",
    defaultCurrentEpisode: exampleEpisodeInfo,
    creators: "Louis Hofmann, Oliver Mascucci, jordis Triebel",
    cast: "Watch Season 6 Now",
    moreLikeThisMovies: []
)

let exampleMovies: [Movie] = [
    exampleMovie1,
    exampleMovie2,
    exampleMovie3,
    exampleMovie4,
    exampleMovie5,
    exampleMovie6,
].shuffled()

let exampleEpisodeInfo = CurrentEpisodeInfo(episodeName: "Endings and Beginnings", description: "On the day of the apocalypse, Clausen executes a search warrant at the power plant as Jonas and Claudia use the time machine to connect past and future.", season: 2, episode: 4)

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        colors: [Color.black.opacity(0), Color.black],
        startPoint: .top,
        endPoint: .bottom
    )
}
