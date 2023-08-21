import SwiftUI

struct CategoryView: View {
    let category: Category
    
    var body: some View {
        Text(category.rawValue)
            .font(.headline)
            .frame(maxWidth: .infinity, minHeight: 100)
            .background(Color.gray)
            .foregroundColor(.white)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.gray, lineWidth: 2)
            )
    }
}

// ... Rest of the CategoryView file ...

