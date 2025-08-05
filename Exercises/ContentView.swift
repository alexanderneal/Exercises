import SwiftUI
import ActivityKit

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    ScrollView {
                        LazyVGrid(columns: [GridItem(.flexible())], spacing: 20) {
                            ForEach(Category.allCases, id: \.self) { category in
                                NavigationLink(destination: ExerciseListView(category: category)) {
                                    CategoryView(category: category)
                                }
                            }
                        }
                        .padding(.horizontal)
                        .padding(.top, 20)
                    }
                    Spacer()
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .font(.custom("SF Pro", size: 17))
        }
    }
}

struct TitleAndDateView: View {
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(formattedDate())
                .font(.system(size: 13))
                .foregroundColor(.gray)
                .padding(.top, 20)
            Text("Exercises")
                .font(.title)
                .bold()
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
    let symbolName: String
    let isSelected: Bool
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: symbolName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 24, height: 24)
                .padding(10)
                .background(isSelected ? color.opacity(0.2) : Color.gray.opacity(0.7))
                .foregroundColor(isSelected ? color : .gray)
                .clipShape(Circle())
                .animation(.bouncy, value: isSelected)
        }
    }
}
