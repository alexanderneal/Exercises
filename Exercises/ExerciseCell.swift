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
            } else if exercise.details == "1 set x 15 reps." {
                Image("cable_down_abs")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 130, height: 150)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(10)
                    .padding(.leading, -40) // Add padding to the left
            } else if exercise.details == "1 set x 20 reps." {
                Image("abs_workout")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 130, height: 150)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(10)
                    .padding(.leading, -40) // Add padding to the left
            }
            else if exercise.details == "2 set x 10 reps" {
                Image("decline_abs")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 130, height: 150)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(10)
                    .padding(.leading, -40) // Add padding to the left
            }
            else if exercise.details == "1 set x 12 reps." {
                Image("hanging_leg_raise_ab_exercise")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 130, height: 150)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(10)
                    .padding(.leading, -40) // Add padding to the left
            }
            else if exercise.details == "1 set x 8 reps." {
                Image("rise_up_abs")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 130, height: 150)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(10)
                    .padding(.leading, -40) // Add padding to the left
            }
            else if exercise.details == "1 set x 22 reps." {
                Image("sat_down_skipping_abs")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 130, height: 150)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(10)
                    .padding(.leading, -40) // Add padding to the left
            }
            else if exercise.details == "1 set x 30 secs" {
                Image("side_plank")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 130, height: 150)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(10)
                    .padding(.leading, -40) // Add padding to the left
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

