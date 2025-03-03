import SwiftUI

struct FeaturedCardView: View {
    var item: FeaturedItem

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            
            Image(item.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 370, height: 370)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.white.opacity(0.2), lineWidth: 1)
                )

            
            LinearGradient(
                gradient: Gradient(colors: [
                    Color.black.opacity(0.5),
                    Color.black.opacity(0.1),
                    Color.clear
                ]),
                startPoint: .top,
                endPoint: .center
            )
            .clipShape(RoundedRectangle(cornerRadius: 20))

            
            LinearGradient(
                gradient: Gradient(colors: [Color.black.opacity(0.2), Color.black.opacity(0.8)]),
                startPoint: .top,
                endPoint: .bottom
            )
            .clipShape(RoundedRectangle(cornerRadius: 20))
            
            VStack(alignment: .leading, spacing: 6) {
                
                Text(item.category)
                    .font(.custom("SuisseIntl-Regular", size: 14))
                    .foregroundColor(Color(red: 106/255, green: 108/255, blue: 250/255, opacity: 1))

                
                Text(item.title)
                    .font(.custom("SuisseIntl-Medium", size: 16))
                    .foregroundColor(.white)

                Spacer()

                VStack(alignment: .leading, spacing: 12) {
                    
                    Text(item.author)
                        .font(.custom("SuisseIntl-Medium", size: 14))
                        .foregroundColor(.white)
                    
                    
                    Text(item.description)
                        .font(.custom("SuisseIntl-Regular", size: 14))
                        .foregroundColor(.white)
                        .lineLimit(2) 
                }

                
                HStack {
                    
                    RoundedRectangle(cornerRadius: 18)
                        .fill(Color.white.opacity(0.2))
                        .frame(width: 90, height: 32)
                        .overlay(
                            Text(item.duration)
                                .font(.custom("SuisseIntl-Regular", size: 14))
                                .foregroundColor(.white)
                        )

                    Spacer()

                    
                    Circle()
                        .fill(Color.white)
                        .frame(width: 38, height: 38)
                        .overlay(
                            Image(systemName: "play.fill")
                                .foregroundColor(.black)
                        )
                }
                .padding(.top, 4)
            }
            .padding()
        }
        .frame(width: 370, height: 370)
    }
}
