import Foundation
import SwiftUICore

struct Statistic: Identifiable {
    let id = UUID()
    let title: String
    let image: String
    let bgShape: BackgroundShape
    let primaryColor: Color
    let value: String
    let unit: String
    let xp: String
}

enum BackgroundShape {
    case triangle, circle, square
}


struct LibraryItem: Identifiable {
    let id = UUID()
    let icon: String
    let title: String
}


enum LibraryTab: CaseIterable {
    case myLibrary, insights

    var title: String {
        switch self {
        case .myLibrary: return "My Library"
        case .insights: return "Insights"
        }
    }
}

struct InsightsModel: Identifiable {
    let id = UUID()
    let imageName: String
    let percentage: String
    let message: String
}


struct WeeklyData: Identifiable {
    let id = UUID()
    let label: String
    let value: Double
    let xp: String
    
}
