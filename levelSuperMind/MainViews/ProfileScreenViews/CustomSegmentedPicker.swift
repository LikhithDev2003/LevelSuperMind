import SwiftUI

struct CustomSegmentedPicker: View {
    @Binding var selectedTab: LibraryTab

    var body: some View {
        HStack {
            ForEach(LibraryTab.allCases, id: \.self) { tab in
                Button(action: {
                    withAnimation {
                        selectedTab = tab
                    }
                }) {
                    VStack {
                        Text(tab.title)
                            .foregroundColor(selectedTab == tab ? .white : .gray)
                            .font(.system(size: 16, weight: selectedTab == tab ? .bold : .regular))
                        
                        if selectedTab == tab {
                            Rectangle()
                                .frame(height: 2)
                                .foregroundColor(.white)
                                .padding(.top, 4)
                        } else {
                            Rectangle()
                                .frame(height: 2)
                                .foregroundColor(.clear)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
            }
        }
        .padding(.horizontal)
    }
}

