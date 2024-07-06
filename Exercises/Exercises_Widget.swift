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
                    Text("In Session")
                }
                DynamicIslandExpandedRegion(.leading){
                    Image(systemName: "dumbbell")
                                .resizable() // Make the image resizable
                                .aspectRatio(contentMode: .fit) // Keep the aspect ratio
                                .frame(width: 17, height: 17)
                                .foregroundColor(.white)
                }
                DynamicIslandExpandedRegion(.trailing){
                   
                    Image(systemName: "map")
                        .aspectRatio(contentMode: .fit)
                        .padding(.trailing)
                        .foregroundColor(.white)


                }
            } compactLeading: {
                Image(systemName: "dumbbell")
                            .resizable() // Make the image resizable
                            .aspectRatio(contentMode: .fit) // Keep the aspect ratio
                            .frame(width: 17, height: 17)
                            .foregroundColor(.white)


            } compactTrailing: {
                Text(context.state.startNav, style: .timer)
                .foregroundColor(.red)} minimal: {
                Image(systemName: "dumbbell")
                            .resizable() // Make the image resizable
                            .aspectRatio(contentMode: .fit) // Keep the aspect ratio
                            .frame(width: 17, height: 17)
                            .foregroundColor(.white)
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
