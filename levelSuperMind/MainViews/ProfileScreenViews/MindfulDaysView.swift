import SwiftUI

struct MindfulDaysView: View {
    let mindfulData: [(day: String, count: CGFloat)] = [
        ("M", 6), ("T", 2), ("W", 4), ("Th", 1), ("F", 1), ("S", 4), ("S", 6)
    ]

    let maxValue: CGFloat = 6
    let usersAverage: CGFloat = 4

    var body: some View {
        VStack {
            
            VStack(alignment: .leading, spacing: 12) {
                Text("Mindful days this week")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)

                Text("This week, you were mindful for 5 days! To prevent breaking your streak, try using streak freeze!")
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
            }
            .padding(.bottom)

            
            ZStack {
                
                
                HStack(alignment: .bottom, spacing: 20) {
                    ForEach(mindfulData, id: \.day) { data in
                        VStack {
                            
                            RoundedRectangle(cornerRadius: 10)
                                .fill(LinearGradient(
                                    gradient: Gradient(colors: [Color(hex: "#9D77EE"), Color.white]),
                                    startPoint: .bottom,
                                    endPoint: .top
                                ))
                                .frame(width: 12, height: CGFloat(data.count) / maxValue * 120) 

                            
                            Text(data.day)
                                .font(.caption)
                                .foregroundColor(.white)
                                .padding(.top, 5)
                        }
                    }
                }
                .padding(.horizontal, 20)
            }
            .frame(height: 160)
            .padding(.top, 10)

            
            HStack(spacing: 20) {
                
                HStack {
                    Circle()
                        .fill(LinearGradient(
                            gradient: Gradient(colors: [Color(hex: "#9D77EE"), Color.white]),
                            startPoint: .leading,
                            endPoint: .trailing
                        ))
                        .frame(width: 10, height: 10)
                    
                    Text("Activities Completed")
                        .foregroundColor(.white)
                        .font(.caption)
                }

                
                HStack {
                    Rectangle()
                        .fill(Color.white.opacity(0.5))
                        .frame(width: 15, height: 2)
                        .overlay(
                            DashedLine()
                                .stroke(style: StrokeStyle(lineWidth: 2, dash: [6]))
                                .foregroundColor(Color.white.opacity(0.5))
                        )

                    Text("Apps User's Average")
                        .foregroundColor(.white)
                        .font(.caption)
                }
            }
            .padding(.top, 16)
        }
        .padding()
        .padding(.horizontal)
        .padding(.vertical)
        .background(Color(hex: "#1C1334").edgesIgnoringSafeArea(.all))
        .cornerRadius(16)
    }
}




struct DashedLine: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: rect.minX, y: rect.midY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
        return path
    }
}
