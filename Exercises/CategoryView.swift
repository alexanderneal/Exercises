import SwiftUI

struct CategoryView: View {
    let category: Category
    
    var body: some View {
        Text(category.rawValue)
            .font(.headline)
            .frame(maxWidth: .infinity, minHeight: 100)
            .foregroundColor(.white)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 2) // Outline with gray border
            )
    }
}

enum Category: String, CaseIterable {
    case arms = "Arms"
    case pecho = "Pecho"
    case back = "Back"
    case legs = "Legs"
    case abs = "Abs"
}

