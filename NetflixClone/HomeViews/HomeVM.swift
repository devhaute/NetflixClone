import Foundation

class HomeVM: ObservableObject {
    @Published var movies: [String: [Movie]] = [:]
    
    var categories: [String] {
        return movies.keys.map { $0 }
    }
    
    init() {
        setupMovies()
    }
    
    func getMovie(forCat cat: String) -> [Movie] {
        return movies[cat] ?? []
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["Stand-Up Comedy"] = exampleMovies.shuffled()
        movies["New Releases"] = exampleMovies.shuffled()
        movies["Watch It Again"] = exampleMovies.shuffled()
        movies["Sci-Fi Movies"] = exampleMovies.shuffled()
    }
}
