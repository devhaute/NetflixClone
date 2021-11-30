import SwiftUI
import Kingfisher

struct TopMoviePreview: View {
    let movie: Movie
    
    func isCategoryLast(_ cat: String) -> Bool {
        let catCount = movie.categories.count
        return cat == movie.categories[catCount - 1]
    }
    
    
    var body: some View {
        ZStack(alignment: .bottom) {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack {
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        HStack {
                            Text(category)
                                .font(.system(size: 12))
                            
                            if !isCategoryLast(category) {
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 3))
                                    .foregroundColor(.blue)
                            }
                        }
                    }
                }
                
                Text("Row of buttons")
            }
            .foregroundColor(.white)
        }
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
            .edgesIgnoringSafeArea(.all)
    }
}
