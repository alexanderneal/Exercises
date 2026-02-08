import SwiftUI

struct ExerciseListView: View {
    @Environment(\.dismiss) private var dismiss
    let category: Category

    var body: some View {
        VStack() {
            TitleAndDateViewerForExercises()
            ScrollView {
                LazyVStack {
                    ForEach(category.exercises) { exercise in
                        NavigationLink {
                            ExerciseDetail(exercise: exercise)
                        } label: {
                            ExerciseCardRow(exercise: exercise)
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .frame(alignment:.top)
    }
}


struct ExerciseCardRow: View {
    let exercise: Exercise

    var body: some View {
        HStack {
            Image(exercise.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 80)
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .padding(.vertical)

            Text(exercise.details)
                .frame(alignment: .trailing)
                
        }
        .fontWeight(.regular)
        .frame(maxWidth: .infinity, minHeight: 100, alignment: .leading)
        .padding(.leading)
        .background(
            ConcentricShape()
                .fill(Color.secondary.opacity(0.2))
        )
        .overlay(
            ConcentricShape()
                .stroke(Color.secondary, lineWidth: 2)
        )
        .clipShape(ConcentricShape())
        .padding(.horizontal, 15)
        .padding(.vertical, 3)
    }
}

struct TitleAndDateViewerForExercises: View {
    
    var body: some View {
        VStack(alignment: .center, spacing: 4) {
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
    
    #Preview {
        NavigationStack {
            ExerciseListView(category: .abs)
        }
    }

