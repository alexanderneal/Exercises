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
    ExerciseDetail(exercise: Exercise(id: 1, details: "1 set x 12 reps.", imageName: "Bicep curl flat grab", description: "Stand with your feet shoulder width. Hold the barbell with an underhand grip. Keep your elbows close to your body, engage your core, and curl the weight up towards your chest while keeping your upper arms stationary"))
}
