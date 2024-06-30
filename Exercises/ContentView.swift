import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible())], spacing: 20) {
                    ForEach(Category.allCases, id: \.self) { category in
                        NavigationLink(destination: ExerciseListView(category: category)) {
                            CategoryView(category: category)
                                .background(Color.clear)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.gray, lineWidth: 2)
                                )
                        }
                    }
                }
                .padding(.horizontal)
                .padding(.top, 20) // Add some space between "Resumen" and category boxes
            }
            
            .background(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.blue, Color.white]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
            //.background(Color(hex: "#063970")) // Use a string representation of the hex color code
            .foregroundColor(.white)
            .navigationBarTitleDisplayMode(.inline)
            .font(.custom("SF Pro", size: 17))
            .navigationBarItems(leading: TitleAndDateView()) // Move this line below the TitleAndDateView definition
        }
    }
}

struct TitleAndDateView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(formattedDate())
                .font(.system(size: 13))
                .foregroundColor(.gray)
                .padding(.top, 20) // Add more padding to lower the position
            Text("Resumen")
                .font(.title)
                .bold()
                .foregroundColor(.white)
        }
    }
    
    private func formattedDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, d MMM"
        dateFormatter.locale = Locale.current // Use the user's preferred language
        return dateFormatter.string(from: Date()).uppercased()
    }
}




