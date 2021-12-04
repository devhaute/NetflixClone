import SwiftUI

struct MovieDetail: View {
    let movie: Movie
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Spacer()
                    
                    Button {
                        //
                    } label: {
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                    }
                }
                .padding(.horizontal, 22)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        StandardHomeMovie(movie: movie)
                            .frame(width: screen.width / 2.5)
                        
                        MovieInfoSubheadLine(movie: movie)
                        
                        if let promotion = movie.promotionHeadLine {
                            Text(promotion)
                                .bold()
                                .font(.headline)
                        }
                        
                        PlayButton(text: "Play", imageName: "play.fill", backgroundColor: .red) {
                            // action
                        }
                        
                        // Current Episode Information
                        VStack(alignment: .leading, spacing: 0) {
                            Divider().frame(height: 0).opacity(0)
                            CurrentEpisodeInformation(movie: movie)
                            
                            CastInfoView(movie: movie)
                                .padding(.vertical)
                        }
                        
                    }
                    .padding(.horizontal)
                }
                
                
                Spacer()
            }
            .foregroundColor(.white)
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie1)
    }
}
