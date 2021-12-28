import SwiftUI

struct HomeView: View {
    @StateObject var homeVm: HomeVM = HomeVM()
    
    let screen = UIScreen.main.bounds
    
    @State private var movieDetailToShow: Movie? = nil
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(showsIndicators: false) {
                ZStack(alignment: .top) {
                    TopMoviePreview(movie: exampleMovie1)
                        .frame(width: screen.width)
                        .padding(.top, -110)
                    
                    TopLowButtons()
                }

                LazyVStack {
                    ForEach(homeVm.categories, id: \.self) { category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(homeVm.getMovie(forCat: category)) { movie in
                                        StandardHomeMovie(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                            .onTapGesture {
                                                movieDetailToShow = movie
                                            }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            
            if let movie = movieDetailToShow {
                MovieDetail(movie: movie, movieDetailToShow: $movieDetailToShow)
                    .animation(.easeIn)
                    .transition(.opacity)
            }
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
