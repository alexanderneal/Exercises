import SwiftUI

struct ExerciseCell: View {
    var exercise: Exercise

    var body: some View {
        HStack {
            Image("plank") // Use the image name without the .png extension
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .foregroundColor(.white)
                .background(Color.gray)
                .cornerRadius(10)
                .padding(.leading, 10) // Add padding to the left

            Text(exercise.details)
                .foregroundColor(.black)
                .padding(.horizontal)
        }
        .frame(maxWidth: .infinity, minHeight: 100)
        .background(Color.gray)
        .cornerRadius(10)
    }
}

