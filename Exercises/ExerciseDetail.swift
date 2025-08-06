import SwiftUI

struct ExerciseDetail: View {
    @Environment(\.presentationMode) var presentationMode
    let exerciseID: Int
    let imageName: String
    
    var body: some View {
        ZStack {
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
        }
        .navigationBarTitle(Text("Exercise Detail"), displayMode: .inline)
    }
}
