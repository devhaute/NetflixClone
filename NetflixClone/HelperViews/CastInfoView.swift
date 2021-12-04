import SwiftUI

struct CastInfoView: View {
    var movie: Movie
    
    var body: some View {
        VStack(alignment: .leading, spacing: 3) {
            Text("Cast: ") + Text(movie.cast)
            Text("Creators: ") + Text(movie.creators)
        }
        .font(.caption)
        .foregroundColor(.gray)
        .lineLimit(1)
    }
}

struct CastInfoView_Previews: PreviewProvider {
    static var previews: some View {
        CastInfoView(movie: exampleMovie1)
    }
}
