import SwiftUI

@available(iOS 17.0, *)
struct TodayView: View {
    @State private var isExpanded = false
    @State private var showEditSheet = false
    @State private var selectedShortcuts: [(String, String)] = [
        ("meditation", "Meditation"),
        ("workout", "Workout"),
        ("sleep", "Sleep")
    ]
    
    let sampleLearnCards: [LearnCardModel] = [
        LearnCardModel(imageName: "yogaim", title: "How to meditate like a monk")
    ]
    
    let sampleMeditationSeries = PrimaryCardItems(
        title: "Meditation Series",
        subtitle: "Manage your emotions",
        episodeCount: 9,
        instructor: "Ranveer Allahbadia",
        imageName: "yoga"
    )


    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                ZStack {
                    Image("bg")
                        .resizable()
                        .scaledToFit()
                        .ignoresSafeArea()
                        .padding(.bottom, -64)

                   
                
                    HStack {
                        
                        HStack {
                            
                            Text("2")
                                .font(.footnote)
                                .foregroundColor(.white)

                            Image("fire")
                                .resizable()
                                .frame(width: 16, height: 16)

                        }
                        .padding(12)
                        .background(Color.black.opacity(0.5))
                        .clipShape(Capsule())

                        HStack {
                            Text("Rank 5")
                                .font(.footnote)
                                .foregroundColor(.white)
                            
                            Image("Gold_league")
                                .resizable()
                                .frame(width: 16, height: 16)
                        }
                        .padding(12)
                        .background(Color.black.opacity(0.5))
                        .clipShape(Capsule())

                        Spacer()
                        
                        Button(action: {
                           
                        }) {
                            
                            Image("Gift")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .padding(12)
                                .background(Color.black.opacity(0.5))
                                .clipShape(Circle())
                        }

                        
                    }
                    .padding(.horizontal) 
                    .padding(.bottom, 28)
                }

                ScrollView {
                    VStack {
                        
                        SectionHeader(title: "Get Started")
                            .padding()

                        MeditationSeriesCard(series: sampleMeditationSeries)
                            .padding(.horizontal)
                        
                        ShortCutsComponent(isExpanded: $isExpanded, selectedShortcuts: $selectedShortcuts, showEditSheet: $showEditSheet)
                            .padding(.horizontal)
                        
                        RecommendedCardsScrollView(title: "Recommended For You", showSeeAll: false)
                            .padding(.top, 8)
                        
                        RecommendedCardsScrollView(title: "Recent", showSeeAll: true)
                            .padding(.top, 8)
                        
                        ForEach(sampleLearnCards) { card in
                            LearnCardView(card: card)
                                .padding(.top, 8)
                        }

                        FeaturedScrollView()
                            .padding(.top)
                        
                        
                        BottomTextComponent()
                        
                    }
                }
            }
            .sheet(isPresented: $showEditSheet) {
                ShortCutsSheet(selectedShortcuts: $selectedShortcuts, showEditSheet: $showEditSheet)
                    .presentationDetents([.fraction(0.6)])
            }

        }
    }
}

