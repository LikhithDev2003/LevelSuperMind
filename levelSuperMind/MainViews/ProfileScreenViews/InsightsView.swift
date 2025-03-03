import SwiftUI
import Charts

struct InsightsView: View {
    
    
    let sampleInsightsBanner = InsightsModel(
        imageName: "insights_increase",
        percentage: "30%",
        message: "Your mindfulness practice\nincreased by 30% this week"
    )

    
    
    var body: some View {
        VStack {
            ScrollView {
                
                InsightsBannerView(insights: sampleInsightsBanner)
                    .padding(.top, 16)
                    .padding(.horizontal, 16)

               
                WeeklyComparisonView()
                    .padding(.top, 16)
                    .padding(.horizontal, 16)
                
                MindfulDaysView()
                    .padding(.top, 16)
                    .padding(.horizontal,12)

                
                MyStatisticsView()
                    .padding(.top, 16)
                
                
                BottomTextComponent()
            }
        }
        .background(Color(hex: "#090218").edgesIgnoringSafeArea(.all))
    }
}


