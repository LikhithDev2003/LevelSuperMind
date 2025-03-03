import SwiftUI

struct StatCard: View {
    var icon: String
    var number: String
    var title: String
    
    var body: some View {
        HStack(spacing: 8) {
            Image(icon)
                .resizable()
                .frame(width: 28, height: 28)

            VStack(alignment: .leading, spacing: 4) {
                Text(number)
                    .font(.headline)
                    .bold()
                    .foregroundColor(.white)

                Text(title)
                    .foregroundColor(.gray)
                    .font(.footnote)
            }
        }
        .padding(.vertical, 8)
        .padding(.horizontal, 12)
        .frame(maxWidth: 180)
        .background(Color(hex: "#0F0622"))
        .cornerRadius(12)
        .overlay(
            RoundedRectangle(cornerRadius: 12)
                .stroke(Color.white.opacity(0.1), lineWidth: 1) 
        )
    }
}
