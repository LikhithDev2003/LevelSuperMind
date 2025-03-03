import SwiftUI

struct RecommendedCardView: View {
    let item: RecommendedItem
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ZStack(alignment: .topLeading) {
                Image(item.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 160, height: 160)
                    .clipShape(RoundedRectangle(cornerRadius: 20))

            }

            Text(item.genre)
                .font(.custom("SuisseIntl-Regular", size: 14))
                .foregroundColor(Color(red: 143/255, green: 206/255, blue: 205/255))
                .padding(.top, 8)

            Text(item.title)
                .font(.custom("SuisseIntl-Medium", size: 18))
                .foregroundColor(.white)

            Text(item.author)
                .font(.custom("SuisseIntl-Regular", size: 16))
                .foregroundColor(.white)
        }
    }
}
