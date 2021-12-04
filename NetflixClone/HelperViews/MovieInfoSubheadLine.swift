import SwiftUI

struct MovieInfoSubheadLine: View {
    let movie: Movie
    
    var numberOfSeasons: String {
        if let number = movie.numberOfSeasons {
            if number == 1 {
                return "1 season"
            } else {
                return "\(number) seasons"
            }
        }
        
        return ""
    }
    
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white)
            Text(String(movie.year))
            RatingView(rating: movie.rating)
            Text(numberOfSeasons)
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}


struct MovieInfoSubheadLine_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            MovieInfoSubheadLine(movie: exampleMovie1)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct RatingView: View {
    let rating: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.gray)
            Text(rating)
                .foregroundColor(.white)
                .font(.system(size: 12))
                .bold()
        }
        .frame(width: 50, height: 20)
    }
}
