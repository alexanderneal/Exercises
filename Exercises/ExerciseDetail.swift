import SwiftUI

struct ExerciseDetail: View {
    @Environment(\.presentationMode) var presentationMode
    var exercise: Exercise
    
    var body: some View {
        
            VStack {
                
                Image(exercise.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: .infinity)
                    .ignoresSafeArea(edges: .top)
                
                
                
                Spacer()
                
                HStack {
                    Text("Exercise")
                        .padding(.horizontal)
                    Spacer()
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About:")
                    .frame(alignment: .leading)
                    .font(.title2)
                    .padding(.top)
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                
                Text(exercise.description)
                    .padding(.horizontal)
                
            }
        
    }
}

#Preview {
    ExerciseDetail(exercise: Exercise(id: 2, details: "1 set x 10 reps.", imageName: "Bent over barbell row back",description: "Keeping your back straight, and elbows close to your body, row the barbell towards your chest, squeezing your back muscles. Slowly lower to the starting position"))
}
