import SwiftUI


struct TopSection: View {
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image("bg")
                .resizable()
                .scaledToFit()
                .frame(height: 260)

            
            HStack {
                StatsItem(text: "2", imageName: "emoji")
                StatsItem(text: "Rank 5", imageName: "rank")

                Spacer()

                StatsItem(imageName: "Gift")
            }
            .padding(.top, 62)
            .padding(.horizontal, 32)
        }
    }
}



#Preview {
    TopSection()
}
