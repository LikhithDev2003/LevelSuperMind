import SwiftUI

struct BarChartView: View {
    let data: [WeeklyData]

    var body: some View {
        GeometryReader { geometry in
            HStack(alignment: .bottom, spacing: 40) {
                ForEach(data) { entry in
                    VStack {
                        VStack {
                            Text("\(entry.label)")
                                .foregroundColor(.white)
                                .font(.footnote)
                                .multilineTextAlignment(.center)

                            Text("\(entry.xp)")
                                .foregroundColor(.white)
                                .font(.footnote)
                                .multilineTextAlignment(.center)
                        }

                        RoundedRectangle(cornerRadius: 8)
                            .fill(LinearGradient(
                                gradient: Gradient(colors: [Color(hex: "#8FCECD"), Color(hex: "#9D77EE")]),
                                startPoint: .bottom,
                                endPoint: .top
                            ))
                            .frame(
                                width: 40,
                                height: CGFloat(entry.value) * geometry.size.height
                            )
                    }
                }
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}
