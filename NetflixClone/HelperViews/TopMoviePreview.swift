import SwiftUI
import Kingfisher

struct TopMoviePreview: View {
    let movie: Movie
    
    func isCategoryLast(_ cat: String) -> Bool {
        let catCount = movie.categories.count
        return cat == movie.categories[catCount - 1]
    }
    
    
    var body: some View {
        ZStack {
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack {
                Spacer()
                
                Divider()
                    .frame(height: 0)
                    .opacity(0)
                
                HStack {
                    ForEach(movie.categories, id: \.self) { category in
                        HStack {
                            Text(category)
                                .font(.footnote)
                            
                            if !isCategoryLast(category) {
                                Image(systemName: "circle.fill")
                                    .font(.system(size: 3))
                                    .foregroundColor(.blue)
                            }
                        }
                    }
                }
                
                HStack {
                    Spacer()
                    SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                        // action
                    }
                    Spacer()
                    WhiteButton(text: "play", imageName: "play.fill") {
                        
                    }
                    .frame(width: 120)
                    Spacer()
                    SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
                        // action
                    }
                    Spacer()
                }
            }
            .foregroundColor(.white)
            .background(
                LinearGradient.blackOpacityGradient
                    .padding(.top, 200)
            )
        }
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovie1)
            .frame(width: UIScreen.main.bounds.width)
            .edgesIgnoringSafeArea(.all)
    }
}
