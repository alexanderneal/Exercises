//
//  Exercises_Widget.swift
//  Exercises
//
//  Created by Alexander Neal on 3/7/24.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct Exercises_Widget: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: ExercisesTrackingAttributes.self) { context in
            ExercisesTrackingWidgetView(context: context)
        } dynamicIsland: { context in
            DynamicIsland {
                DynamicIslandExpandedRegion(.bottom){
                    Text("Keep on Path")
                }
                DynamicIslandExpandedRegion(.leading){
                    Image(systemName: "location.north.fill")
                                .resizable() // Make the image resizable
                                .aspectRatio(contentMode: .fit) // Keep the aspect ratio
                                .frame(width: 17, height: 17)
                                .foregroundColor(.red)
                }
                DynamicIslandExpandedRegion(.trailing){
                   /* Image(systemName: "map")
                        .resizable()
                        .aspectRatio(contentMode: .fit) // Keep the aspect ratio
                        .frame(width: 17, height: 17)
                        .foregroundColor(.red)
                    */
                    Image(systemName: "map")
                        .aspectRatio(contentMode: .fit)
                        .padding(.trailing)
                        .foregroundColor(.red)


                }
            } compactLeading: {
                Image(systemName: "location.north.fill")
                            .resizable() // Make the image resizable
                            .aspectRatio(contentMode: .fit) // Keep the aspect ratio
                            .frame(width: 17, height: 17)
                            .foregroundColor(.red)


            } compactTrailing: {
                Text("N").foregroundColor(.red)
            } minimal: {
                Image(systemName: "location.north.fill")
                            .resizable() // Make the image resizable
                            .aspectRatio(contentMode: .fit) // Keep the aspect ratio
                            .frame(width: 17, height: 17)
                            .foregroundColor(.red)
            }

        }
    }
}


struct ExercisesTrackingWidgetView: View {
    let context: ActivityViewContext<ExercisesTrackingAttributes>

    var body: some View{
        Text(context.state.startNav, style: .relative)
    }
}
