//
//  ExerciseTrackingAttributes.swift
//  Exercises
//
//  Created by Alexander Neal on 3/7/24.
//

import Foundation
import ActivityKit

struct ExercisesTrackingAttributes: ActivityAttributes {
    public typealias ExercisesTrackingStatus = ContentState

    public struct ContentState: Codable, Hashable {
        var startNav: Date
    }
}
