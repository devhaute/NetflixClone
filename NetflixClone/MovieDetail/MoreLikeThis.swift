import SwiftUI

struct MoreLikeThis: View {
    var movies: [Movie]

    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        VStack {
            LazyVGrid(columns: columns, alignment: .leading) {
                ForEach(movies) { movie in
                    StandardHomeMovie(movie: movie)
                }
            }
        }
    }
}

struct MoreLikeThis_Previews: PreviewProvider {
    static var previews: some View {
        MoreLikeThis(movies: exampleMovies)
    }
}
