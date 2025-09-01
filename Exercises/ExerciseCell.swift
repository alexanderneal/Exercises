import SwiftUI

struct ExerciseCell: View {
    var exercise: Exercise
    
    var body: some View {
        HStack {
            //Arms
            if exercise.imageName == "Bicep curl flat grab" {
                Image("Bicep curl flat grab")
                    .resizable()
                    .frame(width: 150, height: 150)
            } else if exercise.imageName == "Bicep curl neutral grab" {
                Image("Bicep curl neutral grab")
                    .resizable()
                    .frame(width: 150, height: 150)
            } else if exercise.imageName == "Dumbbell lateral raises arms" {
                Image("Dumbbell lateral raises arms")
                    .resizable()
                    .frame(width: 150, height: 150)
            } else if exercise.imageName == "Shoulder press arms" {
                Image("Shoulder press arms")
                    .resizable()
                    .frame(width: 150, height: 150)
            } else if exercise.imageName == "Shoulders arms" {
                Image("Shoulders arms")
                    .resizable()
                    .frame(width: 150, height: 150)
            } else if exercise.imageName == "Stand up bicep curl" {
                Image("Stand up bicep curl")
                    .resizable()
                    .frame(width: 150, height: 150)
            } else if exercise.imageName == "Tricep arms" {
                Image("Tricep arms")
                    .resizable()
                    .frame(width: 150, height: 150)
            } else if exercise.imageName == "Triceps arm" {
                Image("Triceps arm")
                    .resizable()
                    .frame(width: 150, height: 150)
            }
            
            //Pecho
           else if exercise.imageName == "Bench press chest" {
                Image("Bench press chest")
                   .resizable()
                   .frame(width: 150, height: 150)
            } else if exercise.imageName == "Chest dips pecho" {
                Image("Chest dips pecho")
                    .resizable()
                    .frame(width: 150, height: 150)
            } else if exercise.imageName == "Forward chest" {
                Image("Forward chest")
                    .resizable()
                    .frame(width: 150, height: 150)
            } else if exercise.imageName == "Incline dumbbells press" {
                Image("Incline dumbbells press")
                    .resizable()
                    .frame(width: 150, height: 150)
            } else if exercise.imageName == "Open fly chest" {
                Image("Open fly chest")
                    .resizable()
                    .frame(width: 150, height: 150)
            } else if exercise.imageName == "Opening chest" {
                Image("Opening chest")
                    .resizable()
                    .frame(width: 150, height: 150)
            } else if exercise.imageName == "Push up chest" {
                Image("Push up chest")
                    .resizable()
                    .frame(width: 150, height: 150)
            }
            
            //Back
            else if exercise.imageName == "Bend over dumbells row back" {
                Image("Bend over dumbells row back")
                    .resizable()
                    .frame(width: 150, height: 150)
            } else if exercise.imageName == "Bent over barbell row back" {
                Image("Bent over barbell row back")
                    .resizable()
                    .frame(width: 150, height: 150)
            } else if exercise.imageName == "Lat pulldown back" {
                Image("Lat pulldown back")
                    .resizable()
                    .frame(width: 150, height: 150)
            } else if exercise.imageName == "One Arm Dumbbell Row back" {
                Image("One Arm Dumbbell Row back")
                    .resizable()
                    .frame(width: 150, height: 150)
            } else if exercise.imageName == "Press back" {
                Image("Press back")
                    .resizable()
                    .frame(width: 150, height: 150)
            } else if exercise.imageName == "Pull back" {
                Image("Pull back")
                    .resizable()
                    .frame(width: 150, height: 150)
            } else if exercise.imageName == "Pullup back" {
                Image("Pullup back")
                    .resizable()
                    .frame(width: 150, height: 150)
            }else if exercise.imageName == "Row back" {
                Image("Row back")
                    .resizable()
                    .frame(width: 150, height: 150)
            }
        
            //Legs
             else if exercise.imageName == "Squats" {
                Image("Squats")
                     .resizable()
                     .frame(width: 150, height: 150)
            } else if exercise.imageName == "Leg extension" {
                Image("Leg extension")
                    .resizable()
                    .frame(width: 150, height: 150)
            } else if exercise.imageName == "Leg pressdown" {
                Image("Leg pressdown")
                    .resizable()
                    .frame(width: 150, height: 150)
            } else if exercise.imageName == "Steps legs" {
                Image("Steps legs")
                    .resizable()
                    .frame(width: 150, height: 150)
            } else if exercise.imageName == "Down press legs" {
                Image("Down press legs")
                    .resizable()
                    .frame(width: 150, height: 150)
            } else if exercise.imageName == "Pull down legs" {
                Image("Pull down legs")
                    .resizable()
                    .frame(width: 150, height: 150)
            } else if exercise.imageName == "Leg curls" {
                Image("Leg curls")
                    .resizable()
                    .frame(width: 150, height: 150)
                
            //Abs
            }
            else if exercise.imageName == "Plank" {
                Image("Plank")
                    .resizable()
                    .frame(width: 150, height: 150)
            } else if exercise.imageName == "Cable down abs" {
                Image("Cable down abs")
                    .resizable()
                    .frame(width: 150, height: 150)
            } else if exercise.imageName == "Abs workout" {
                Image("Abs workout")
                    .resizable()
                    .frame(width: 150, height: 150)
            } else if exercise.imageName == "Decline abs" {
                Image("Decline abs")
                    .resizable()
                    .frame(width: 150, height: 150)
            } else if exercise.imageName == "Hanging leg raise ab exercise" {
                Image("Hanging leg raise ab exercise")
                    .resizable()
                    .frame(width: 150, height: 150)
            } else if exercise.imageName == "Rise up abs" {
                Image("Rise up abs")
                    .resizable()
                    .frame(width: 150, height: 150)
            } else if exercise.imageName == "Sat down skipping abs" {
                Image("Sat down skipping abs")
                    .resizable()
                    .frame(width: 150, height: 150)
            } else if exercise.imageName == "Side plank" {
                Image("Side plank")
                    .resizable()
                    .frame(width: 150, height: 150)
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

//#Preview {
//    ExerciseCell(exercise: Exercise)
//}
