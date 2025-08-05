import SwiftUI

struct ConcentricShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path(roundedRect: rect, cornerRadius: 24)
    }
}

struct CategoryView: View {
    let category: Category
    
    var body: some View {
        VStack {
            Text(category.rawValue)
                .font(.system(.headline))
                .frame(maxWidth: .infinity, minHeight: 100)
                .background(
                    ConcentricShape()
                        .fill(Color.secondary.opacity(0.2))
                )
                .overlay(
                    ConcentricShape()
                        .stroke(Color.secondary, lineWidth: 2)
                        
                )
                .clipShape(ConcentricShape())
                .padding(.horizontal)
        }
    }
}

#Preview{
    CategoryView(category: Category.abs)
}
