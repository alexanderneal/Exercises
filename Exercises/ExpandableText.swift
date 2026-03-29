import SwiftUI

/// A reusable text view that shows a collapsed preview of long text with a "Read more" toggle.
/// - Parameters:
///   - text: The full text to display.
///   - lineLimit: The number of lines to show when collapsed. Default is 1.
///   - showButtonOnlyIfLong: If true, hides the button for short text. Default is true.
struct ExpandableText: View {
    let text: String
    var lineLimit: Int = 1
    var showButtonOnlyIfLong: Bool = true

    @State private var expanded = false

    // Simple heuristic to decide if the button should be shown.
    private var needsButton: Bool {
        guard showButtonOnlyIfLong else { return true }
        return text.count > 160 || text.contains("\n")
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ZStack(alignment: .bottom) {
                Text(text)
                    .lineLimit(expanded ? nil : lineLimit)
                    .animation(.easeInOut, value: expanded)

                // Faded edge to hint there’s more content when collapsed
                if needsButton && !expanded {
                    LinearGradient(
                        colors: [.clear, Color(.systemBackground)],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    .frame(height: 24)
                    .allowsHitTesting(false)
                }
            }

            if needsButton {
                Button(expanded ? "Read less" : "Read more") {
                    withAnimation(.easeInOut) { expanded.toggle() }
                }
                .font(.callout)
                .bold()
                .buttonStyle(.plain)
                .accessibilityLabel(expanded ? "Collapse description" : "Expand description")
            }
        }
    }
}

#Preview {
    ScrollView {
        VStack(alignment: .leading, spacing: 16) {
            ExpandableText(
                text: """
                This is a long description used to showcase the ExpandableText view. It will initially show only a few lines, and then expand when the user taps the Read more button.
                
                The second paragraph adds more content to demonstrate multi-paragraph support and ensure the preview looks good in different scenarios.
                """,
                lineLimit: 1
            )
        }
        .padding()
    }
}
