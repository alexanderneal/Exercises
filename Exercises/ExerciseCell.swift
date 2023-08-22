import SwiftUI

struct ExerciseCell: View {
    var exercise: Exercise
    
    var body: some View {
        HStack {
            if exercise.imageName == "plank" {
                Image("plank")
                Text("1 set x 1 min")
            } else if exercise.imageName == "cable_down_abs" {
                Image("cable_down_abs")
                Text(exercise.details)
            } else if exercise.imageName == "abs_workout" {
                Image("abs_workout")
                Text(exercise.details)
            } else if exercise.imageName == "decline_abs" {
                Image("decline_abs")
                Text(exercise.details)
            } else if exercise.imageName == "hanging_leg_raise_ab_exercise" {
                Image("hanging_leg_raise_ab_exercise")
                Text(exercise.details)
            } else if exercise.imageName == "rise_up_abs" {
                Image("rise_up_abs")
                Text(exercise.details)
            } else if exercise.imageName == "sat_down_skipping_abs" {
                Image("sat_down_skipping_abs")
                Text(exercise.details)
            } else if exercise.imageName == "side_plank" {
                Image("side_plank")
                Text(exercise.details)
            }

            Text(exercise.details)
                .foregroundColor(.black)
                .padding(.horizontal)
        }
        .frame(maxWidth: .infinity, minHeight: 100)
        .background(Color.gray)
        .cornerRadius(10)
    }
}
