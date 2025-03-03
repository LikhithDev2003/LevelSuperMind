import SwiftUI

struct MyStatisticsView: View {
    let stats: [Statistic] = [
        Statistic(title: "Meditation", image: "meditation_statistics", bgShape: .triangle, primaryColor: Color(hex: "#F20C78"), value: "200", unit: "Sessions", xp: "700 XP"),
        Statistic(title: "Workout", image: "Workout_statistics", bgShape: .circle, primaryColor: Color(hex: "#FFC607"), value: "200", unit: "Minutes", xp: "700 XP"),
        Statistic(title: "Journal", image: "journal_statics", bgShape: .square, primaryColor: Color(hex: "#F20C78"), value: "200", unit: "Entries", xp: "700 XP")
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("My statistics:")
                .foregroundColor(.white)
                .font(.title3)
                .bold()
                .padding(.leading)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(stats) { stat in
                        StatisticCard(stat: stat)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}



