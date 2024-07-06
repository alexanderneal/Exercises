import SwiftUI

struct ExerciseDetail: View {
    @Environment(\.presentationMode) var presentationMode
    @Binding var isDarkMode: Bool
    let exerciseID: Int
    let imageName: String
    
    
    private var backButton: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }) {
            Image(systemName: "arrow.left.circle.fill")
                .font(.title)
                .foregroundColor(isDarkMode ? .white : .gray)
        }
    }
    
    var body: some View {
        ZStack {
            // Fullscreen background color
            (isDarkMode ? Color.black : Color.white).edgesIgnoringSafeArea(.all)
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
        }
        .navigationBarTitle(Text("Exercise Detail"), displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: backButton)
    }
}
