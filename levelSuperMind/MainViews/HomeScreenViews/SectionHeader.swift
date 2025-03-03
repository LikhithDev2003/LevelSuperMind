import SwiftUI


struct SectionHeader: View {
    var title: String

    var body: some View {
        HStack {
            Text(title)
                .font(.custom("SuisseIntl-Medium", size: 20))
                .foregroundColor(.white)
            Spacer()
        }
        .padding(.top, 24)
    }
}
