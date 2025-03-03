import SwiftUI

struct ShortCutsSheet: View {
    @Binding var selectedShortcuts: [(String, String)]
    @Binding var showEditSheet: Bool

    let allShortcuts = [
        ("meditation", "Meditation"), ("workout", "Workout"), ("sleep", "Sleep"),
        ("mantra", "Mantra"), ("events", "Events"), ("courses", "Courses"),
        ("community", "Community"), ("timer", "Timer"), ("affirmation", "Affirmation"),
        ("music", "Music"), ("journal", "Journal")
    ]

    var body: some View {
        VStack(spacing: 16) {
            
            
            HStack {
                Text("Select max 3 shortcuts")
                    .font(.headline)
                    .bold()
                    .foregroundColor(.white)
                Spacer()
                
                Button("Cancel") {
                    showEditSheet = false
                }
                .foregroundColor(.white)
                .font(.callout)

            }
            .padding(.horizontal)

            
            Divider()
                .background(Color.white)
            
            ScrollView{
                
                
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 8), count: 3), spacing: 8) {
                    ForEach(selectedShortcuts, id: \.0) { item in
                        ZStack(alignment: .topTrailing) {
                            IconTextCard(iconName: item.0, text: item.1)
                            Button(action: {
                                selectedShortcuts.removeAll(where: { $0.0 == item.0 })
                            }) {
                                Image(systemName: "minus.circle.fill")
                                    .foregroundColor(.red)
                                    .offset(x: 8, y: -8)
                            }
                        }
                    }
                }
                .padding(.top)
                .padding(.horizontal)
                
                Divider()
                    .background(Color.white)
                
                
                LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 8), count: 3), spacing: 8) {
                    ForEach(allShortcuts.filter { shortcut in
                        !selectedShortcuts.contains(where: { $0.0 == shortcut.0 })
                    }, id: \.0) { item in
                        Button(action: {
                            if selectedShortcuts.count < 3 {
                                selectedShortcuts.append(item)
                            }
                        }) {
                            IconTextCard(iconName: item.0, text: item.1)
                        }
                    }
                }
                .padding(.horizontal)
            }

            
            Button(action: {
                showEditSheet = false
            }) {
                Text("Save")
                    .frame(maxWidth: .infinity)
                    .frame(height: 44)
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(20)
            }
            .padding(.horizontal)

        }
        .padding(.vertical, 30)
        .background(Color(hex: "#090218"))
    }
}
