import SwiftUI

struct PilatesDetailView: View {
    
    let pilates: Pilates
    
    var body: some View {
            
            Image(pilates.imageName)
            .resizable()
            .scaledToFill()
            .frame(maxWidth: .infinity)
            .ignoresSafeArea(edges: .top)
                    
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
                .padding(.bottom)
                .padding(.bottom)
        }
        .padding()
    }
}

#Preview {
    PilatesDetailView(pilates: PilatesList.topPilates[0])
}
