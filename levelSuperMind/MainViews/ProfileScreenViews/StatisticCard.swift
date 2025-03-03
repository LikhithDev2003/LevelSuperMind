import SwiftUI

struct StatisticCard: View {
    let stat: Statistic

    var body: some View {
        VStack(spacing: 0) {
           
            Text(stat.title)
                .foregroundColor(stat.primaryColor)
                .font(.headline)
                .bold()
                .padding(.top, 32)

            ZStack {
                backgroundShape(for: stat.bgShape, color: stat.primaryColor.opacity(1))
                    .frame(width: 100, height: 100)
                    .padding(.top, 6)

                Image(stat.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
            }
            .padding()

           
            Rectangle()
                .frame(height: 1)
                .foregroundColor(Color.white.opacity(0.2))

            
            HStack(spacing: 20) {
                VStack {
                    Text(stat.value)
                        .foregroundColor(stat.primaryColor)
                        .font(.headline)
                        .bold()

                    Text(stat.unit)
                        .foregroundColor(Color(hex: "#F5F5F5"))
                        .font(.footnote)
                }

                VStack {
                    Text(stat.xp.split(separator: " ")[0])
                        .foregroundColor(stat.primaryColor)
                        .font(.headline)
                        .bold()

                    Text("XP")
                        .foregroundColor(Color(hex: "#F5F5F5"))
                        .font(.footnote)
                }
            }
            .padding()

            Spacer()
        }
        .frame(width: 160, height: 240)
        .background(Color(hex: "#282234"))
        .cornerRadius(16)
        .overlay(
            RoundedRectangle(cornerRadius: 16)
                .stroke(Color(hex: "#3B3741"), lineWidth: 2)
        )

        
    }

    
    @ViewBuilder
    private func backgroundShape(for shape: BackgroundShape, color: Color) -> some View {
        switch shape {
        case .triangle:
            Triangle()
                .fill(color)
        case .circle:
            Circle()
                .fill(color)
        case .square:
            RoundedRectangle(cornerRadius: 8)
                .fill(color)
        }
    }
}


struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.closeSubpath()
        return path
    }
}
