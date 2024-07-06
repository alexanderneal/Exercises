import SwiftUI
import ActivityKit

struct ContentView: View {
    @Binding var isDarkMode: Bool
    @State private var isTrackingMeters: Bool = false
    @State private var startNav: Date? = nil
    @State private var activity: Activity<ExercisesTrackingAttributes>? = nil
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [isDarkMode ? Color.black : Color.white.opacity(0.9)]),
                    startPoint: .top,
                    endPoint: .bottom
                ).edgesIgnoringSafeArea(.all)
                
                VStack {
                    TitleAndDateView(isDarkMode: $isDarkMode)
                        .padding(.top, 20)
                    
                    ScrollView {
                        LazyVGrid(columns: [GridItem(.flexible())], spacing: 20) {
                            ForEach(Category.allCases, id: \.self) { category in
                                NavigationLink(destination: ExerciseListView(isDarkMode: $isDarkMode, category: category)) {
                                    CategoryView(category: category, isDarkMode: $isDarkMode)
                                        .background(Color.clear)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 10)
                                                .stroke(isDarkMode ? Color.white : Color.gray, lineWidth: 2)
                                        )
                                }
                            }
                        }
                        .padding(.horizontal)
                        .padding(.top, 20)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Button(action: toggleTracking) {
                            Text(isTrackingMeters ? "STOP" : "START")
                                .fontWeight(.light)
                                .foregroundColor(.white)
                                .frame(width: 100, height: 50)
                                .background(Capsule().fill(isTrackingMeters ? Color.red.opacity(0.8) : Color.green.opacity(0.8)))
                        }
                        .padding(.bottom, 20)
                        
                        HStack {
                            ModeToggleButton(symbolName: "sun.max.fill", isSelected: !isDarkMode, color: Color.yellow) {
                                isDarkMode = false
                            }
                            ModeToggleButton(symbolName: "moon", isSelected: isDarkMode, color: Color.white) {
                                isDarkMode = true
                            }
                        }
                        .padding(.bottom)
                    }
                    
                    if let startNav = startNav {
                        Text("Started: \(startNav, style: .timer)")
                            .padding(.bottom, 10)
                    }
                }
            }
            .foregroundColor(isDarkMode ? .white : .black)
            .navigationBarTitleDisplayMode(.inline)
            .font(.custom("SF Pro", size: 17))
        }
    }
    
    func toggleTracking() {
        isTrackingMeters.toggle()
        
        if isTrackingMeters {
            startNav = .now
            startLiveActivity()
        } else {
            endLiveActivity()
            startNav = nil
        }
    }
    
    private func startLiveActivity() {
        let attributes = ExercisesTrackingAttributes()
        let state = ExercisesTrackingAttributes.ContentState(startNav: .now)
        let content = ActivityContent(state: state, staleDate: nil)
        
        do {
            activity = try Activity.request(
                attributes: attributes,
                content: content,
                pushType: nil
            )
        } catch let error {
            print("Error starting Live Activity: \(error.localizedDescription)")
        }
    }
    
    private func endLiveActivity() {
        Task {
            guard let activity = activity else { return }
            let state = ExercisesTrackingAttributes.ContentState(startNav: startNav ?? .now)
            let content = ActivityContent(state: state, staleDate: nil) // Define the content here

            await activity.end(content, dismissalPolicy: .immediate) // Use the content variable
        }
        self.startNav = nil
    }
}

struct TitleAndDateView: View {
    @Binding var isDarkMode: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(formattedDate())
                .font(.system(size: 13))
                .foregroundColor(.gray)
                .padding(.top, 20)
            Text("Exercises")
                .font(.title)
                .bold()
                .foregroundColor(isDarkMode ? .white : .black)
        }
    }
    
    private func formattedDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, d MMM"
        dateFormatter.locale = Locale.current
        return dateFormatter.string(from: Date()).uppercased()
    }
}

struct ModeToggleButton: View {
    let symbolName: String
    let isSelected: Bool
    let color: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Image(systemName: symbolName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 24, height: 24)
                .padding(10)
                .background(isSelected ? color.opacity(0.2) : Color.gray.opacity(0.7))
                .foregroundColor(isSelected ? color : .gray)
                .clipShape(Circle())
                .animation(.bouncy, value: isSelected)
        }
    }
}
