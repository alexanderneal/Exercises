import SwiftUI

@main
struct ExercisesApp: App {
    @State private var isDarkMode = false

    var body: some Scene {
        WindowGroup {
            ContentView(isDarkMode: $isDarkMode)
        }
    }
}
