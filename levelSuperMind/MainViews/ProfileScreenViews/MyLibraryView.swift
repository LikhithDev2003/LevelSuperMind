import SwiftUI


struct MyLibraryView: View {
    let menuItems: [LibraryItem] = [
        LibraryItem(icon: "Favourites", title: "My Favorites"),
        LibraryItem(icon: "downloads", title: "Downloads"),
        LibraryItem(icon: "playlists", title: "My Playlists"),
        LibraryItem(icon: "My_journal", title: "My Journal Entries")
    ]

    var body: some View {
        ScrollView {
            VStack {
                
                RecommendedCardsScrollView(title: "Recently played", showSeeAll: true)
                    .padding(.top, 8)

                
                VStack(spacing: 12) {
                    ForEach(menuItems) { item in
                        LibraryMenuItemView(item: item)
                    }
                }
                .padding(.top, 16)
                
                
                BottomTextComponent()


            }
        }
    }
}
