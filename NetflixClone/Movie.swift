import Foundation

struct Movie: Hashable, Identifiable {
    let id: String
    let name: String
    let thumbnailURL: URL
}
