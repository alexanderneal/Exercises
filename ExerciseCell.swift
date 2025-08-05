import SwiftUI

struct ExerciseCell: View {
    var exercise: Exercise
    
    var body: some View {
        HStack {
            //Arms
            if exercise.imageName == "bicep curl flat grab" {
                Image("bicep curl flat grab")
            } else if exercise.imageName == "bicep curl neutral grab" {
                Image("bicep curl neutral grab")
            } else if exercise.imageName == "Dumbbell_lateral_raises_arms" {
                Image("Dumbbell_lateral_raises_arms")
            } else if exercise.imageName == "shoulder_press_arms" {
                Image("shoulder_press_arms")
            } else if exercise.imageName == "shoulders_arms" {
                Image("shoulders_arms")
            } else if exercise.imageName == "stand up bicep curl" {
                Image("stand up bicep curl")
            } else if exercise.imageName == "tricep_arms" {
                Image("tricep_arms")
            } else if exercise.imageName == "triceps_arm" {
                Image("triceps_arm")
            }
            
            //Pecho
           else if exercise.imageName == "bench_press_chest" {
                Image("bench_press_chest")
            } else if exercise.imageName == "chest_dips_pecho" {
                Image("chest_dips_pecho")
            } else if exercise.imageName == "forward_chest" {
                Image("forward_chest")
            } else if exercise.imageName == "Incline_dumbbells_press" {
                Image("Incline_dumbbells_press")
            } else if exercise.imageName == "open_fly_chest" {
                Image("open_fly_chest")
            } else if exercise.imageName == "opening_chest" {
                Image("opening_chest")
            } else if exercise.imageName == "push_up_chest" {
                Image("push_up_chest")
            }
            
            //Back
            else if exercise.imageName == "bend_over_dumbells_row_back" {
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
        
            //Legs
             else if exercise.imageName == "squats" {
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
                
            //Abs
            }
            else if exercise.imageName == "plank" {
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
            }
            
            Text(exercise.details)
                .foregroundColor(.black)
                .padding(.horizontal)
        }
        .frame(maxWidth: .infinity, minHeight: 100)
        .background(Color.gray.opacity(0.8))
        .cornerRadius(10)
    }
}
