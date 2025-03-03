import SwiftUI

struct CustomTabBar: View {
    @Binding var selectedTab: Int
    
    let tabItems = [
        ("House_selected", "House_unselected", "Today"),
        ("Explore", "Explore", "Explore"),
        ("Profile_selected", "Profile", "You")
    ]
    
    var body: some View {
        VStack(spacing: 0) {
            Divider()
                .background(Color.white.opacity(0.1))
            
            HStack {
                ForEach(0..<tabItems.count, id: \.self) { index in
                    Button(action: {
                        selectedTab = index
                        UIImpactFeedbackGenerator(style: .medium).impactOccurred()
                    }) {
                        VStack {
                            Image(selectedTab == index ? tabItems[index].0 : tabItems[index].1)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                            Text(tabItems[index].2)
                                .font(.caption)
                                .foregroundColor(selectedTab == index ? .white : .gray)
                        }
                        .padding()
                    }
                    .frame(maxWidth: .infinity)
                }
            }
        }
    }
}
