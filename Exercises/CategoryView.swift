import SwiftUI

struct CategoryView: View {
    let category: Category
    @Binding var isDarkMode: Bool
    
    var body: some View {
        Text(category.rawValue)
            .font(.headline)
            .frame(maxWidth: .infinity, minHeight: 100)
            .background(isDarkMode ? Color.gray.opacity(0.3) : Color.white)
            .foregroundColor(isDarkMode ? .white : .black)
            .cornerRadius(10)
    }
}

// ... Rest of the CategoryView file ...

