import SwiftUI

let exampleVideoURL: URL = URL(string: "https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4")!
let exampleImageURL: URL = URL(string: "https://picsum.photos/300/104")!
let exampleImageURL2: URL = URL(string: "https://picsum.photos/300/105")!
let exampleImageURL3: URL = URL(string: "https://picsum.photos/300/106")!

var randomExampleImageURL: URL {
    [exampleImageURL, exampleImageURL2, exampleImageURL3].randomElement() ?? exampleImageURL
}

let exampleTrailer1: Trailer = Trailer(name: "Season 3 Trailer", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailer2: Trailer = Trailer(name: "The Hero`s Journey", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)
let exampleTrailer3: Trailer = Trailer(name: "The Mysterious", videoURL: exampleVideoURL, thumbnailImageURL: randomExampleImageURL)

let exampleTrailers: [Trailer] = [
    exampleTrailer1, exampleTrailer2, exampleTrailer3
]

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
    trailers: exampleTrailers,
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
    trailers: exampleTrailers,
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
    trailers: exampleTrailers,
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
    trailers: exampleTrailers,
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
    trailers: exampleTrailers,
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
    trailers: exampleTrailers,
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
