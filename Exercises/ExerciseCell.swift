import SwiftUI

struct ExerciseCell: View {
    var exercise: Exercise
    
    var body: some View {
        HStack {
            if exercise.details == "1 set x 1 min" {
                Image("plank")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 130, height: 150)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(10)
                    .padding(.leading, -40) // Add padding to the left
            } else if exercise.details == "1 set x 15 reps. " {
                Image("cable_down_abs")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 130, height: 150)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(10)
                    .padding(.leading, -40) // Add padding to the left
            } else if exercise.details == "Abs Exercise 3" {
                Image("abs_workout_3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 130, height: 150)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(10)
                    .padding(.leading, -40) // Add padding to the left
            }
            else if exercise.details == "2 set x 10 reps " {
                Image("decline_abs")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 130, height: 150)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(10)
                    .padding(.leading, -40) // Add padding to the left
            }
            // Add more conditions for other images
            
            Text(exercise.details)
                .foregroundColor(.black)
                .padding(.horizontal)
        }
        .frame(maxWidth: .infinity, minHeight: 100)
        .background(Color.gray)
        .cornerRadius(10)
    }
}

