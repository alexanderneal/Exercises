import SwiftUI

struct ExerciseCell: View {
    var exercise: Exercise
    
    var body: some View {
        HStack { //Abs
            if exercise.imageName == "plank" {
                Image("plank")
            } else if exercise.imageName == "cable_down_abs" {
                Image("cable_down_abs")
            } else if exercise.imageName == "abs_workout" {
                Image("abs_workout")
            } else if exercise.imageName == "decline_abs" {
                Image("decline_abs")
            } else if exercise.imageName == "hanging_leg_raise_ab_exercise" {
                Image("hanging_leg_raise_ab_exercise")
            } else if exercise.imageName == "rise_up_abs" {
                Image("rise_up_abs")
            } else if exercise.imageName == "sat_down_skipping_abs" {
                Image("sat_down_skipping_abs")
            } else if exercise.imageName == "side_plank" {
                Image("side_plank")
            //Legs
            } else if exercise.imageName == "cable_down_abs" {
                Image("cable_down_abs")
            } else if exercise.imageName == "abs_workout" {
                Image("abs_workout")
            } else if exercise.imageName == "decline_abs" {
                Image("decline_abs")
            } else if exercise.imageName == "hanging_leg_raise_ab_exercise" {
                Image("hanging_leg_raise_ab_exercise")
            } else if exercise.imageName == "rise_up_abs" {
                Image("rise_up_abs")
            } else if exercise.imageName == "sat_down_skipping_abs" {
                Image("sat_down_skipping_abs")
            } else if exercise.imageName == "side_plank" {
                Image("side_plank")
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
