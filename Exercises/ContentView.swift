import SwiftUI

struct ContentView: View {
    @Binding var isDarkMode: Bool

    var body: some View {
        NavigationView {
            ZStack {
                // Background gradient based on mode
                LinearGradient(
                    gradient: Gradient(colors: [isDarkMode ? Color.black : Color.white.opacity(0.9)]),
                    startPoint: .top,
                    endPoint: .bottom
                ).edgesIgnoringSafeArea(.all)
                
                VStack {
                    ScrollView {
                        LazyVGrid(columns: [GridItem(.flexible())], spacing: 20) {
                            ForEach(Category.allCases, id: \.self) { category in
                                NavigationLink(destination: ExerciseListView(category: category)) {
                                    CategoryView(category: category, isDarkMode: $isDarkMode)
                                        .background(Color.clear)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(isDarkMode ? Color.white : Color.gray, lineWidth: 2)
                                        )
                                }
                            }
                        }
                        .padding(.horizontal)
                        .padding(.top, 20)
                    }
                    
                    Spacer()
                    
                    // Mode toggle buttons
                    HStack {
                                            ModeToggleButton(symbolName: "sun.max.fill", isSelected: !isDarkMode, color: Color.yellow) {
                                                isDarkMode = false
                                            }
                                            ModeToggleButton(symbolName: "moon", isSelected: isDarkMode, color: Color.white) {
                                                isDarkMode = true
                                            }
                                        }
                                        .padding(.bottom)
                }
            }
            .foregroundColor(isDarkMode ? .white : .black)
            .navigationBarTitleDisplayMode(.inline)
            .font(.custom("SF Pro", size: 17))
            .navigationBarItems(leading: TitleAndDateView(isDarkMode: $isDarkMode))
        }
    }
}

struct TitleAndDateView: View {
    @Binding var isDarkMode: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(formattedDate())
                .font(.system(size: 13))
                .foregroundColor(.gray)
                .padding(.top, 20)
            Text("Resumen")
                .font(.title)
                .bold()
                .foregroundColor(isDarkMode ? .white : .black)
        }
    }
    
    private func formattedDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, d MMM"
        dateFormatter.locale = Locale.current
        return dateFormatter.string(from: Date()).uppercased()
    }
}



struct ModeToggleButton: View {
    let title: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .padding()
                .background(isSelected ? Color.blue : Color.gray)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(isDarkMode: .constant(false))
    }
}

