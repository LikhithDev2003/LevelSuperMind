import SwiftUI


struct MeditationSeriesCard: View {
    var series: PrimaryCardItems

    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(Color(red: 28/255, green: 19/255, blue: 52/255))
            .frame(height: 160)
            .overlay(
                HStack {
                    VStack(alignment: .leading, spacing: 8) {
                        Text(series.title)
                            .foregroundColor(Color(red: 106/255, green: 108/255, blue: 250/255))
                            .font(.custom("SuisseIntl-Regular", size: 14))
                        
                        Text(series.subtitle)
                            .foregroundColor(.white)
                            .font(.custom("SuisseIntl-Medium", size: 20))
                        
                        HStack(spacing: 2) {
                            Image("menu")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 14)
                            Text("\(series.episodeCount)")
                                .foregroundColor(.white)
                                .font(.custom("SuisseIntl-Regular", size: 14))
                        }
                        
                        Text(series.instructor)
                            .foregroundColor(.white)
                            .font(.custom("SuisseIntl-Regular", size: 14))
                    }
                    .padding(.leading)

                    Spacer()

                    Image(series.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 120)
                        .padding(.trailing)
                }
            )
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color(red: 104/255, green: 38/255, blue: 234/255), lineWidth: 2)
            )
            .shadow(color: Color.black.opacity(0.25), radius: 4, x: 0, y: 4)
    }
}


