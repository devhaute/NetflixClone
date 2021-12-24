import SwiftUI

enum CustomTab: String, CaseIterable {
    case episode = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}

struct CustomTabSwitcher: View {
    var movie: Movie
    
    @State private var currentTab: CustomTab = CustomTab.allCases[0]
    
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(CustomTab.allCases, id: \.self) { tab in
                        VStack {
                            Rectangle()
                                .fill(currentTab == tab ? .red : .clear)
                                .frame(height: 6)
                            
                            Button {
                                withAnimation {
                                    currentTab = tab
                                }
                            } label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(currentTab == tab ? .white : .white.opacity(0.5))
                            }
                        }
                    }
                }
            }
            
            switch currentTab {
            case .episode:
                EpisodesView(episodes: movie.episodes ?? [], showSeasonPicker: $showSeasonPicker, selectedSeason: $selectedSeason)
            case .trailers:
                TrailerList(trailers: movie.trailers)
            case .more:
                MoreLikeThis(movies: movie.moreLikeThisMovies)
                    .padding(5)
            }
        }
        .foregroundColor(.white)
    }
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)

            CustomTabSwitcher(movie: exampleMovie1, showSeasonPicker: .constant(false), selectedSeason: .constant(1))
        }
    }
}
