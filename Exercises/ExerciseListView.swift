import SwiftUI

struct ExerciseListView: View {
    @Environment(\.presentationMode) var presentationMode
    let category: Category
    
    var body: some View {
        VStack {
            HStack {
                backButton
                Spacer()
            }
            .padding(.horizontal)
            
            Text(category.rawValue)
                .font(.title)
                .padding(.bottom, 20)
            
            ScrollView {
                LazyVStack(spacing: 20) {
                    ForEach(1...8, id: \.self) { exerciseID in
                        NavigationLink(destination: ExerciseDetail(exerciseID: exerciseID)) {
                            OutlineRectangle()
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
        .background(Color(hex: "#063970")) // Set background color to #063970
        .foregroundColor(.white)
        .navigationTitle("")
        .navigationBarHidden(true)
    }
    
    private var backButton: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }) {
            Image(systemName: "arrow.left.circle.fill")
                .font(.title)
                .foregroundColor(.white)
        }
    }
}

struct OutlineRectangle: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .stroke(Color.gray, lineWidth: 2)
            .frame(maxWidth: .infinity, minHeight: 100)
    }
}

// Rest of the code remains the same

