import SwiftUI

struct ExerciseDetail: View {
    let exerciseID: Int
    
    var body: some View {
        VStack {
            Image(systemName: "photo") // Placeholder for exercise image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 120)
                .foregroundColor(.white)
                .background(Color.gray)
                .cornerRadius(10)
                .padding(.top, 20)
            
            Text("Exercise \(exerciseID)")
                .font(.title)
                .padding()
        }
        .background(Color.blue)
        .foregroundColor(.white)
        .navigationTitle("Exercise Detail")
    }
}
