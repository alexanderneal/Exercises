import SwiftUI

struct ExerciseDetail: View {
    @Binding var isDarkMode: Bool
    let exerciseID: Int
    
    var body: some View {
        VStack {
            Image(systemName: "photo") // Placeholder for exercise image
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 150)
                .foregroundColor(isDarkMode ? .black : .white)
                .background(Color.gray)
                .cornerRadius(10)
                .padding(.top, 20)
            
            Text("Exercise \(exerciseID)")
                .font(.title)
                .padding()
        }
        .background(isDarkMode ? Color.black : Color.white)
        .foregroundColor(isDarkMode ? .white : .black)
        .navigationTitle("Exercise Detail")
    }
}
