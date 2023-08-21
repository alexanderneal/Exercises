import SwiftUI

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

struct ExerciseListView: View {
    @Environment(\.presentationMode) var presentationMode
    let category: Category

    var body: some View {
        VStack {
            HStack {
                backButton
                Spacer()
            }
            .padding(.horizontal)

            Text(category.rawValue)
                .font(.title)
                .padding(.bottom, 20)

            ScrollView {
                LazyVStack(spacing: 20) {
                    ForEach(category.exercises) { exercise in
                        NavigationLink(destination: ExerciseDetail(exerciseID: exercise.id)) {
                            ExerciseCell(exercise: exercise)
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
        .background(Color(hex: "#063970")) // Use a string representation of the hex color code
        .foregroundColor(.white)
        .navigationTitle("")
        .navigationBarHidden(true)
    }

    private var backButton: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }) {
            Image(systemName: "arrow.left.circle.fill")
                .font(.title)
                .foregroundColor(.white)
        }
    }
}

// ... Rest of the ExerciseListView file ...

