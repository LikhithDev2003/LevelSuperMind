import Foundation


struct RecommendedItem: Identifiable {
    let id = UUID()
    let image: String
    let isNew: Bool
    let progress: String?
    let title: String
    let author: String
    let genre: String
    let duration: String?
}


struct FeaturedItem: Identifiable {
    let id = UUID()
    let imageName: String
    let category: String
    let title: String
    let author: String
    let description: String
    let duration: String
}


struct LearnCardModel: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    
}


struct PrimaryCardItems: Identifiable {
    let id = UUID()
    let title: String
    let subtitle: String
    let episodeCount: Int
    let instructor: String
    let imageName: String
}
