import SwiftUI
import Charts


struct WeeklyComparisonView: View {
    let sampleBarChartData: [WeeklyData] = [
        WeeklyData(label: "325", value: 0.6, xp: "XP"),
        WeeklyData(label: "415", value: 0.8, xp: "XP")
    ]

    
    
    var body: some View {
        VStack {
           
            
            VStack(alignment: .leading, spacing: 12) {
                Text("Weekly comparison")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)

                
                Text("This week, your average number of activities dropped 30% from last week. To boost your consistency, commit to streaks after an activity.")
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .fixedSize(horizontal: false, vertical: true)
            }
            .padding(.bottom)
            

            
            BarChartView(data: sampleBarChartData)
                .frame(height: 160)
                .padding(.bottom, 32)
        }
        .padding()
        .padding(.vertical)
        .background(Color(hex: "#1C1334"))
        .cornerRadius(16)
    }
}
