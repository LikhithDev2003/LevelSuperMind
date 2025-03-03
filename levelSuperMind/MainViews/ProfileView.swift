import SwiftUI

struct YouView: View {
    @State private var selectedTab: LibraryTab = .myLibrary

    var body: some View {
        ZStack {
            Color(hex: "#090218").edgesIgnoringSafeArea(.all)

            VStack {
                
                HStack {
                    ZStack {
                        
                        Circle()
                            .fill(Color(hex: "#005149"))
                            .frame(width: 64, height: 64)

                        Text("S")
                            .font(.largeTitle)
                            .foregroundColor(.white)

                       
                        Button(action: {
                            print("Edit button tapped")
                        }) {
                            ZStack {
                                Circle()
                                    .fill(Color(hex: "#241A3D"))
                                    .frame(width: 22, height: 22)

                                Image(systemName: "pencil")
                                    .resizable()
                                    .frame(width: 10, height: 10)
                                    .foregroundColor(Color(hex: "#A78BFA"))
                            }
                        }
                        .offset(x: 24, y: 24)
                    }

                    VStack(alignment: .leading, spacing: 4) {
                        
                        
                        HStack{
                            Text("Sourav")
                                .foregroundColor(.white)
                                .font(.headline)
                                .fontWeight(.semibold)

                            
                            if selectedTab != .insights {
                                Image(systemName: "crown.fill")
                                    .foregroundColor(Color(hex: "#FACC15"))
                                    .font(.footnote)
                            }
                        }

                        if selectedTab == .insights {
                            
                            Button(action: {
                                print("Join Level Premium Clicked")
                            }) {
                                HStack {
                                    Image(systemName: "crown.fill")
                                        .foregroundColor(Color(hex: "#FACC15"))
                                        .font(.caption)

                                    Text("Join Level Premium")
                                        .foregroundColor(Color(hex: "#FACC15"))
                                        .font(.caption)
                                }
                                .padding(.horizontal, 8)
                                .padding(.vertical, 4)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color(hex: "#FACC15"), lineWidth: 1)
                                )
                            }
                        } else {
                            
                            
                            Button(action: {
                               
                            }) {
                                
                                HStack {
                                    Text("Level Premium User")
                                        .foregroundColor(Color(hex: "#FACC15"))
                                        .font(.caption)
                                    
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(Color(hex: "#FACC15"))
                                        .font(.caption)
                                }
                            }
                        }
                    }
                    .padding(.leading, 10)

                    Spacer()

                    
                    Button(action: {
                        print("Settings")
                    }) {
                        
                        Image(systemName: "gearshape")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.white)
                    }
                }
                .padding()
                .padding(.top,32)

                
                Spacer().frame(height: 16)

                
                HStack(spacing: 16) {

                    Button(action: {
                        
                    }) {
                        StatCard(icon: "fire", number: "17", title: "Day Streak")
                    }

                    Button(action: {
                       
                    }) {
                        StatCard(icon: "Gold_league", number: "#04", title: "Gold league")
                    }
                }
                .padding(.horizontal)

                Spacer().frame(height: 24)

                
                CustomSegmentedPicker(selectedTab: $selectedTab)

                
                if selectedTab == .myLibrary {
                    MyLibraryView()
                } else {
                    InsightsView()
                }

                Spacer()
            }
        }
    }
}
