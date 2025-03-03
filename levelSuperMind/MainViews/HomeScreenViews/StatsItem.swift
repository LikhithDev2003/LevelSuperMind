import SwiftUI

struct StatsItem: View {
    var text: String? = nil
    var imageName: String

    var body: some View {
        HStack(spacing: 2) {
            if let text = text {
                Text(text)
                    .foregroundColor(.white)
                    .font(.custom("SuisseIntl-Regular", size: 18))
            }
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
        }
        .padding(12)
        .background(Color(red: 17/255, green: 9/255, blue: 32/255).opacity(0.7))
        .cornerRadius(50)
    }
}
