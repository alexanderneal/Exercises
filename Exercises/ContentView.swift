import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible())], spacing: 20) {
                    ForEach(Category.allCases, id: \.self) { category in
                        NavigationLink(destination: ExerciseListView(category: category)) {
                            CategoryView(category: category)
                                .background(Color.clear) // Clear background
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.gray, lineWidth: 2) // Outline with gray border
                                )
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
        }
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

