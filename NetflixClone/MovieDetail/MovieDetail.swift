import SwiftUI

struct MovieDetail: View {
    let movie: Movie
    let screen = UIScreen.main.bounds
    
    @State private var showSeasonPicker = false
    @State private var selectedSeason = 1
    
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
                        
                        HStack(spacing: 60) {
                            SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: true) {
                                //
                            }
                            
                            SmallVerticalButton(text: "Rate", isOnImage: "hand.thumbsup.fill", isOffImage: "hand.thumbsup", isOn: true) {
                                //
                            }
                            
                            SmallVerticalButton(text: "Share", isOnImage: "square.and.arrow.up", isOffImage: "square.and.arrow.up", isOn: true) {
                                //
                            }
                            
                            Spacer()
                        }
                        .padding(.leading, 20)
                        
                        CustomTabSwitcher(movie: movie, showSeasonPicker: $showSeasonPicker, selectedSeason: $selectedSeason)
                        
                    }
                    .padding(.horizontal)
                }
                
                
                Spacer()
            }
            .foregroundColor(.white)
            
            if showSeasonPicker {
                ZStack {    
                    Color.black
                    
                    VStack {
                        Spacer()
                        
                        VStack(spacing: 30) {
                            ForEach(0..<movie.numberOfSeasons!) { seasonNumber in
                                Button {
                                    withAnimation {
                                        selectedSeason = seasonNumber + 1
                                        showSeasonPicker = false
                                    }
                                } label: {
                                    Text("Season \(seasonNumber + 1)")
                                        .foregroundColor(selectedSeason == seasonNumber + 1 ? .white : .gray)
                                        .bold()
                                        .font(selectedSeason == seasonNumber + 1 ? .title : .title2)
                                }

                            }
                        }
                            
                        Spacer()
                        
                        Button {
                            self.showSeasonPicker = false
                        } label: {
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 40))
                                .scaleEffect(x: 1.1)
                        }
                        .padding(.bottom, 30)

                    }
                    .foregroundColor(.white)
                }
            }
        }
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie1)
    }
}
