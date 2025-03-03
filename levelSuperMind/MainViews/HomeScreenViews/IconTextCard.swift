
import SwiftUI

struct IconTextCard: View {
    var iconName: String
    var text: String
    var backgroundColor: Color = Color(red: 28/255, green: 19/255, blue: 52/255)
    
    var body: some View {
        VStack(spacing: 8){
            Image(iconName)
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(.white)
            
            Text(text)
                .font(.custom("SuisseIntl-Regular", size: 12))
                .foregroundColor(.white)
        }
        .padding()
        .frame(width: 88, height: 88)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    IconTextCard(iconName: "figure.mind.and.body", text: "Meditation")
}
