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
            } else if exercise.imageName == "squats" {
                Image("squats")
            } else if exercise.imageName == "leg_extension" {
                Image("leg_extension")
            } else if exercise.imageName == "leg_pressdown" {
                Image("leg_pressdown")
            } else if exercise.imageName == "steps_legs" {
                Image("steps_legs")
            } else if exercise.imageName == "down_press_legs" {
                Image("down_press_legs")
            } else if exercise.imageName == "pull_down_legs" {
                Image("pull_down_legs")
            } else if exercise.imageName == "leg_curls" {
                Image("leg_curls")
            
            //Back
            } else if exercise.imageName == "bend_over_dumbells_row_back" {
                Image("bend_over_dumbells_row_back")
            } else if exercise.imageName == "bent_over_barbell_row_back" {
                Image("bent_over_barbell_row_back")
            } else if exercise.imageName == "Lat_pulldown_back" {
                Image("Lat_pulldown_back")
            } else if exercise.imageName == "One_Arm_Dumbbell_Row_back" {
                Image("One_Arm_Dumbbell_Row_back")
            } else if exercise.imageName == "press_back" {
                Image("press_back")
            } else if exercise.imageName == "pull_back" {
                Image("pull_back")
            } else if exercise.imageName == "Pullup_back" {
                Image("Pullup_back")
            }else if exercise.imageName == "row_back" {
                Image("row_back")
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
