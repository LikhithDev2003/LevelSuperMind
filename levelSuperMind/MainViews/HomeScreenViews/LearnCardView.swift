import SwiftUI

struct LearnCardView: View {
    var card: LearnCardModel

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            
            Text("Learn")
                .font(.custom("SuisseIntl-Medium", size: 20))
                .foregroundColor(.white)
                .padding(.horizontal)

            
            HStack {
                
                Image(card.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 111)

                
                VStack(alignment: .leading, spacing: 4) {
                    Text(card.title)
                        .font(.custom("SuisseIntl-Medium", size: 16))
                        .foregroundColor(.white)

                    Text("Read More")
                        .font(.custom("SuisseIntl-Regular", size: 14))
                        .foregroundColor(.white.opacity(0.8))
                }
                .padding(.leading, 8)
                .padding(.trailing)

                Spacer()

                
                Circle()
                    .fill(Color(red: 15/255, green: 6/255, blue: 34/255, opacity: 0.7))
                    .frame(width: 38, height: 38)
                    .overlay(
                        Image("share")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                    )
            }
            .padding()
            .background(Color(red: 56/255, green: 33/255, blue: 106/255))
            .cornerRadius(10)
            .padding(.top, 8)
            .padding(.horizontal)
        }
        .padding(.top, 16)
    }
}

