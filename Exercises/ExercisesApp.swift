import SwiftUI

@main
struct ExercisesApp: App {
    @AppStorage("isDarkMode") private var isDarkMode = false

    var body: some Scene {
        WindowGroup {
            ContentView(isDarkMode: $isDarkMode)
        }
    }
}
