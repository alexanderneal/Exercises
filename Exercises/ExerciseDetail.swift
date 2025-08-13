import SwiftUI

struct ExerciseDetail: View {
    @Environment(\.presentationMode) var presentationMode
    var exercise: Exercise
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Image(exercise.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 250)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .padding(.vertical, 10)
                
                Text(exercise.imageName)
                    .font(.subheadline)
                
                Spacer()
                
                HStack {
                    Text("Exercise")
                    Spacer()
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("About:")
                    .frame(alignment: .leading)
                    .font(.title2)
                    .padding(.top)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                
                Text(exercise.description)
                
            }.padding()
        }.navigationBarTitle(Text("Exercise Detail"), displayMode: .inline)
    }
}

#Preview {
    ExerciseDetail(exercise: Exercise(id: 1, details: "1 set x 12 reps.", imageName: "Bicep curl flat grab", description: "Stand with your feet shoulder width. Hold the barbell with an underhand grip. Keep your elbows close to your body, engage your core, and curl the weight up towards your chest while keeping your upper arms stationary"))
}
