import SwiftUI


struct InsightsBannerView: View {
    var insights: InsightsModel

    var body: some View {
        HStack(spacing: 12) {
           
            HStack {
                Image(insights.imageName)
                    .font(.system(size: 18))
                
                Text(insights.percentage)
                    .foregroundColor(Color(hex: "#B2E2DD"))
                    .font(.title3)
                    .bold()
            }
            
            Rectangle()
                .frame(width: 1, height: 40)
                .foregroundColor(Color.white.opacity(0.4))
            
            Text(insights.message)
                .foregroundColor(Color.white)
                .font(.system(size: 16))
                .multilineTextAlignment(.leading)
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, minHeight: 80)
        .background(
            LinearGradient(gradient: Gradient(colors: [
                Color(hex: "#23384B"),
                Color(hex: "#35646F")
            ]), startPoint: .leading, endPoint: .trailing)
        )
        .cornerRadius(16)
    }
}
