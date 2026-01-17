import SwiftUI

struct ExerciseDetail: View {
    @Environment(\.dismiss) private var dismiss
    @State private var showingSheet: Bool = false

    var exercise: Exercise
    
    var body: some View {

            Image(exercise.imageName)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity)
                .ignoresSafeArea(edges: .top)
                .padding(.bottom)
                .padding(.bottom)
            
        VStack {
            Text(exercise.imageName)
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
            
            HStack {
                Text("Exercise")
                    .padding(.leading)
                Spacer()
                
                Button(action: { showingSheet = true }) {
                    Label("", systemImage: "questionmark.circle")
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(exercise.details)
                    .padding(.trailing)
            }
            .font(.subheadline)
            .foregroundStyle(.secondary)
            
            Divider()
            
            Text("About")
                .frame(alignment: .leading)
                .font(.title2)
                .padding(.top)
                .padding(.horizontal)
                .frame(maxWidth: .infinity, alignment: .topLeading)
            
            Text(exercise.description)
                .padding(.horizontal)
        
        }
        .sheet(isPresented: $showingSheet) {
            HelpSheet(exercise: exercise)
                .presentationDetents([.medium, .large])
        }
    }
}

struct HelpSheet: View {
    var exercise: Exercise
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 16) {
                    Text("About this exercise")
                        .font(.title2)
                        .bold()

                    if !exercise.details.isEmpty {
                        Text(exercise.details)
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }

                    Text(exercise.description)
                }
                .padding()
            }
            .navigationTitle("Exercise Help")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done") { dismiss() }
                }
            }
        }
    }
}

#Preview {
    ExerciseDetail(exercise: Exercise(id: 2, details: "1 set x 10 reps", imageName: "Abs workout",description: "Keeping your back straight, and elbows close to your body, row the barbell towards your chest, squeezing your back muscles. Slowly lower to the starting position"))
}

