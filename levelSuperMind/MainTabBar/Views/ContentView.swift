import SwiftUI

@available(iOS 17.0, *)
struct ContentView: View {
    
    @State private var selectedTab = 0
    
    var body: some View {
        ZStack {
            Color(red: 15/255, green: 6/255, blue: 34/255)
                .ignoresSafeArea()
            
            VStack(spacing: 0) {
                
                Spacer()
                if selectedTab == 0 {
                    TodayView()
                } else if selectedTab == 1 {
                    ExploreView()
                } else if selectedTab == 2 {
                    YouView()
                }
                Spacer()
                
                
                CustomTabBar(selectedTab: $selectedTab)
                    .padding(.bottom)
            }
        }
        .ignoresSafeArea(.all)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
