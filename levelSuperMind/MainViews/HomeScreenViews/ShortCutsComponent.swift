import SwiftUI

struct ShortCutsComponent: View {
    @Binding var isExpanded: Bool
    @Binding var selectedShortcuts: [(String, String)]
    @Binding var showEditSheet: Bool

    let allShortcuts = [
        ("meditation", "Meditation"), ("workout", "Workout"), ("sleep", "Sleep"),
        ("mantra", "Mantra"), ("events", "Events"), ("courses", "Courses"),
        ("community", "Community"), ("timer", "Timer"), ("affirmation", "Affirmation"),
        ("music", "Music"), ("journal", "Journal")
    ]

    var body: some View {
        VStack {
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 8), count: 4), spacing: 4) {
               
                ForEach(selectedShortcuts, id: \.0) { item in
                    
                    Button(action: {

                    }) {
                        IconTextCard(iconName: item.0, text: item.1)
                    }
                }

                
                Button(action: {
                    withAnimation {
                        isExpanded.toggle()
                    }
                }) {
                    IconTextCard(iconName: isExpanded ? "less" : "more", text: isExpanded ? "Close" : "More")
                }

                
                if isExpanded {
                    ForEach(allShortcuts.filter { shortcut in
                        !selectedShortcuts.contains(where: { $0.0 == shortcut.0 }) && !["meditation", "workout", "sleep"].contains(shortcut.0) 
                    }, id: \.0) { item in
                        
                        Button(action: {

                        }) {
                            IconTextCard(iconName: item.0, text: item.1)
                        }
                    }
                }
            }

            if isExpanded {
                HStack {
                    Spacer()
                    Button(action: {
                        showEditSheet = true
                    }) {
                        Text("Edit Shortcuts")
                            .foregroundColor(Color(hex: "#BB9BE1"))
                            .font(.custom("SuisseIntl-Medium", size: 16))
                            .padding(.top, 8)
                    }
                    Spacer()
                }
            }
        }
        .padding(.top, 8)
    }
}
