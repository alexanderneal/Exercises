//
//  Exercises_WidgetExtensionLiveActivity.swift
//  Exercises_WidgetExtension
//
//  Created by Alexander Neal on 3/7/24.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct Exercises_WidgetExtensionAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct Exercises_WidgetExtensionLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: Exercises_WidgetExtensionAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension Exercises_WidgetExtensionAttributes {
    fileprivate static var preview: Exercises_WidgetExtensionAttributes {
        Exercises_WidgetExtensionAttributes(name: "World")
    }
}

extension Exercises_WidgetExtensionAttributes.ContentState {
    fileprivate static var smiley: Exercises_WidgetExtensionAttributes.ContentState {
        Exercises_WidgetExtensionAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: Exercises_WidgetExtensionAttributes.ContentState {
         Exercises_WidgetExtensionAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: Exercises_WidgetExtensionAttributes.preview) {
   Exercises_WidgetExtensionLiveActivity()
} contentStates: {
    Exercises_WidgetExtensionAttributes.ContentState.smiley
    Exercises_WidgetExtensionAttributes.ContentState.starEyes
}
