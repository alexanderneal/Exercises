import SwiftUI

struct ExerciseCell: View {
    var exercise: Exercise
    
    var body: some View {
        HStack {
            //Arms
            if exercise.imageName == "Bicep curl flat grab" {
                Image("Bicep curl flat grab")
            } else if exercise.imageName == "Bicep curl neutral grab" {
                Image("Bicep curl neutral grab")
            } else if exercise.imageName == "Dumbbell lateral raises arms" {
                Image("Dumbbell lateral raises arms")
            } else if exercise.imageName == "Shoulder press arms" {
                Image("Shoulder press arms")
            } else if exercise.imageName == "Shoulders arms" {
                Image("Shoulders arms")
            } else if exercise.imageName == "Stand up bicep curl" {
                Image("Stand up bicep curl")
            } else if exercise.imageName == "Tricep arms" {
                Image("Tricep arms")
            } else if exercise.imageName == "Triceps arm" {
                Image("Triceps arm")
            }
            
            //Pecho
           else if exercise.imageName == "Bench press chest" {
                Image("Bench press chest")
            } else if exercise.imageName == "Chest dips pecho" {
                Image("Chest dips pecho")
            } else if exercise.imageName == "Forward chest" {
                Image("Forward chest")
            } else if exercise.imageName == "Incline dumbbells press" {
                Image("Incline dumbbells press")
            } else if exercise.imageName == "Open fly chest" {
                Image("Open fly chest")
            } else if exercise.imageName == "Opening chest" {
                Image("Opening chest")
            } else if exercise.imageName == "Push up chest" {
                Image("Push up chest")
            }
            
            //Back
            else if exercise.imageName == "Bend over dumbells row back" {
                Image("Bend over dumbells row back")
            } else if exercise.imageName == "Bent over barbell row back" {
                Image("Bent over barbell row back")
            } else if exercise.imageName == "Lat pulldown back" {
                Image("Lat pulldown back")
            } else if exercise.imageName == "One Arm Dumbbell Row back" {
                Image("One Arm Dumbbell Row back")
            } else if exercise.imageName == "Press back" {
                Image("Press back")
            } else if exercise.imageName == "Pull back" {
                Image("Pull back")
            } else if exercise.imageName == "Pullup back" {
                Image("Pullup back")
            }else if exercise.imageName == "Row back" {
                Image("Row back")
            }
        
            //Legs
             else if exercise.imageName == "Squats" {
                Image("Squats")
            } else if exercise.imageName == "Leg extension" {
                Image("Leg extension")
            } else if exercise.imageName == "Leg pressdown" {
                Image("Leg pressdown")
            } else if exercise.imageName == "Steps legs" {
                Image("Steps legs")
            } else if exercise.imageName == "Down press legs" {
                Image("Down press legs")
            } else if exercise.imageName == "Pull down legs" {
                Image("Pull down legs")
            } else if exercise.imageName == "Leg curls" {
                Image("Leg curls")
                
            //Abs
            }
            else if exercise.imageName == "Plank" {
                Image("Plank")
            } else if exercise.imageName == "Cable down abs" {
                Image("Cable down abs")
            } else if exercise.imageName == "Abs workout" {
                Image("Abs workout")
            } else if exercise.imageName == "Decline abs" {
                Image("Decline abs")
            } else if exercise.imageName == "Hanging leg raise ab exercise" {
                Image("Hanging leg raise ab exercise")
            } else if exercise.imageName == "Rise up abs" {
                Image("Rise up abs")
            } else if exercise.imageName == "Sat down skipping abs" {
                Image("Sat down skipping abs")
            } else if exercise.imageName == "Side plank" {
                Image("Side plank")
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
