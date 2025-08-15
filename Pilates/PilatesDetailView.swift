import SwiftUI

struct PilatesDetailView: View {
    
    let pilates: Pilates
    
    var body: some View {
            
            Image(pilates.imageName)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity)
                .ignoresSafeArea()
        
        VStack(alignment: .leading) {
            Text(pilates.title)
                .font(.title)
            
            HStack {
                Text("Pilates")
                Spacer()
                Text(pilates.title)
            }
            .font(.subheadline)
            .foregroundStyle(.secondary)
            
            Divider()
            
            Text("About \(pilates.title)")
                .font(.title2)
                .padding(.bottom)
            
            Text(pilates.description)
        }
        .padding()
    }
}

#Preview {
    PilatesDetailView(pilates: PilatesList.topPilates[0])
}
