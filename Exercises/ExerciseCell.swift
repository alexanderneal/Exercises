import SwiftUI

struct ExerciseCell: View {
    var exercise: Exercise

    var body: some View {
        HStack {
            Image(systemName: "photo") // Placeholder for exercise image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .foregroundColor(.white)
                .background(Color.gray)
                .cornerRadius(10)
            Text(exercise.details) // Display exercise details text
                .foregroundColor(.black) // Adjust text color
                .padding(.horizontal)
        }
        .frame(maxWidth: .infinity, minHeight: 100)
        .background(Color.gray)
        .cornerRadius(10)
    }
}

