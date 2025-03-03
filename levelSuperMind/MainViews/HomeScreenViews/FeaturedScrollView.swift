
import SwiftUI

@available(iOS 17.0, *)
struct FeaturedScrollView: View {
    
    var featuredItems: [FeaturedItem] = [
        FeaturedItem(imageName: "f1", category: "Meditation Series", title: "Change your thought patterns", author: "Ranveer Allahbadia", description: "Break down your thought patterns and understand why you think the way you do to optimise your emotional well-being.", duration: "10 Mins"),
        FeaturedItem(imageName: "f3", category: "Meditation Series", title: "Change your thought patterns", author: "Ranveer Allahbadia", description: "Break down your thought patterns and understand why you think the way you do to optimise your emotional well-being.", duration: "10 Mins"),
        FeaturedItem(imageName: "f2", category: "Meditation Series", title: "Change your thought patterns", author: "Ranveer Allahbadia", description: "Break down your thought patterns and understand why you think the way you do to optimise your emotional well-being.", duration: "10 Mins")
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("Featured")
                .font(.custom("SuisseIntl-Medium", size: 20))
                .foregroundColor(.white)
                .padding(.horizontal)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    ForEach(featuredItems) { item in
                        FeaturedCardView(item: item)
                            .scrollTransition { content, phase in
                                content
                                    .scaleEffect(phase.isIdentity ? 1 : 0.75)
                            }
                    }
                    .containerRelativeFrame(.horizontal, count: 1, spacing: 0)
                    .scrollTransition { content, phase in
                        content
                            .opacity(phase.isIdentity ? 1 : 0.5)
                            .scaleEffect(phase.isIdentity ? 1 : 0.75)
                    }
                }
                .scrollTargetLayout()
            }
            .contentMargins(16, for: .scrollContent) 
            .scrollTargetBehavior(.viewAligned)
        }
    }
}



#Preview {
    if #available(iOS 17.0, *) {
        FeaturedScrollView()
            .background(Color(red: 15/255, green: 6/255, blue: 34/255))
    } else {
        
    }
}
