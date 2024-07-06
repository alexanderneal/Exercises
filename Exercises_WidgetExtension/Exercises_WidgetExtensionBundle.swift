//
//  Exercises_WidgetExtensionBundle.swift
//  Exercises_WidgetExtension
//
//  Created by Alexander Neal on 3/7/24.
//

import WidgetKit
import SwiftUI

@main
struct Exercises_WidgetExtensionBundle: WidgetBundle {
    var body: some Widget {
        Exercises_WidgetExtension()
        Exercises_WidgetExtensionLiveActivity()
    }
}
