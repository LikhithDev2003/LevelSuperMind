import SwiftUI

struct BottomTextComponent: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            HStack {
                Text("Made Mindfully in")
                    .foregroundColor(Color(hex: "#5B4B6C"))
                    .font(.system(size: 16))

                Text("🇮🇳")
                    .font(.system(size: 16))
            }

            Text("Clear Mind")
                .foregroundColor(Color(hex: "#5B4B6C"))
                .font(.custom("Helvetica-Bold", size: 36))
                .padding(.top, 4)

            Text("Better Performance")
                .foregroundColor(Color(hex: "#5B4B6C"))
                .font(.custom("Helvetica-Bold", size: 36))
        }
        .padding(.top, 32)
    }
}
