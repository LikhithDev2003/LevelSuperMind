import SwiftUI

struct RecommendedCardsScrollView: View {
    var title: String
    var showSeeAll: Bool 

    let recommendedItems: [RecommendedItem] = [
        RecommendedItem(image: "r1", isNew: false, progress: nil, title: "Freedom Series", author: "Akhil Aryan", genre: "Meditation", duration: "10 Mins"),
        RecommendedItem(image: "r2", isNew: true, progress: "1/5", title: "Freedom Series", author: "Akhil Aryan", genre: "Meditation Series", duration: nil),
        RecommendedItem(image: "r1", isNew: true, progress: nil, title: "Freedom Series", author: "Akhil Aryan", genre: "Meditation Series", duration: nil)
    ]
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 16) {
                
                HStack {
                    Text(title) 
                        .font(.custom("SuisseIntl-Medium", size: 20))
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    if showSeeAll {
                        
                        Button(action: {
                            
                        }) {
                            
                            Text("See All")
                                .font(.custom("SuisseIntl-Regular", size: 14))
                                .foregroundColor(.white)
                        }
                    }
                }
                .padding(.horizontal)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(recommendedItems) { item in
                            RecommendedCardView(item: item)
                        }
                    }
                    .padding(.horizontal)
                }
                .padding(.top, 8)
            }
            Spacer()
        }
        .padding(.top)
    }
}



#Preview {
    VStack(spacing: 20) {
        RecommendedCardsScrollView(title: "Trending Now", showSeeAll: true)
        RecommendedCardsScrollView(title: "Top Picks", showSeeAll: false)  
    }
    .background(Color(red: 15/255, green: 6/255, blue: 34/255))
}
