import ActivityKit
import WidgetKit
import SwiftUI

struct Exercises_WidgetExtensionAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        var emoji: String
        var startNav: Date
    }

    var name: String
}

struct Exercises_WidgetExtensionLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: Exercises_WidgetExtensionAttributes.self) { context in
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)
        } dynamicIsland: { context in
            DynamicIsland {
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Keep on Path")
                }
                DynamicIslandExpandedRegion(.leading) {
                    Image(systemName: "location.north.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 17, height: 17)
                        .foregroundColor(.red)
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Image(systemName: "map")
                        .aspectRatio(contentMode: .fit)
                        .padding(.trailing)
                        .foregroundColor(.red)
                }
            } compactLeading: {
                Image(systemName: "location.north.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 17, height: 17)
                    .foregroundColor(.red)
            } compactTrailing: {
                Text("N").foregroundColor(.red)
            } minimal: {
                Image(systemName: "location.north.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 17, height: 17)
                    .foregroundColor(.red)
            }
        }
    }
}

struct NavigationTrackingWidgetView: View {
    let context: ActivityViewContext<Exercises_WidgetExtensionAttributes>

    var body: some View {
        Text(context.state.startNav, style: .relative)
    }
}

