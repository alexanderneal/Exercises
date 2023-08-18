import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible())], spacing: 20) {
                    ForEach(Category.allCases, id: \.self) { category in
                        NavigationLink(destination: ExerciseListView(category: category)) {
                            CategoryView(category: category)
                        }
                    }
                }
                .padding(.horizontal)
            }
            .background(Color(hex: "#063970"))
            .foregroundColor(.white)
            .navigationBarTitle("Fitness App", displayMode: .inline)
            .navigationBarTitleDisplayMode(.inline)
            .font(.custom("SF Pro", size: 17))
            .overlay(
                Rectangle()
                    .foregroundColor(Color.white.opacity(0.85)) // Semi-translucent white background
                    .ignoresSafeArea(.container, edges: .top) // Make sure it covers the whole screen
                    .frame(height: 60) // Adjust the height of the sticky header
                    .opacity(stickyHeaderOpacity) // Opacity changes as you scroll
            )
        }
    }
    
    private var stickyHeaderOpacity: Double {
        // Adjust the opacity based on scroll position
        let scrollPosition = max(-100, ScrollViewProxy.defaultMinListRowHeight - 20)
        return Double(min(1, -scrollPosition / 100))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// Rest of the code remains the same

extension Color {
    init(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        
        var rgb: UInt64 = 0
        
        Scanner(string: hexSanitized).scanHexInt64(&rgb)
        
        let red = Double((rgb >> 16) & 0xFF) / 255.0
        let green = Double((rgb >> 8) & 0xFF) / 255.0
        let blue = Double(rgb & 0xFF) / 255.0
        
        self.init(red: red, green: green, blue: blue)
    }
}

