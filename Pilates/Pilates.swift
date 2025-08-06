//
//  Pilates.swift
//  Exercises
//
//  Created by Alexander Neal on 5/8/25.
//

import Foundation
import SwiftUI

struct Pilates: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    var description: String
    
}

struct PilatesList {
    
    static let topPilates = [
        Pilates(imageName: "Leg circle", title: "Leg circle", description: "Inhale to prepare. Exhale to float one leg into single table top position. Inhale to hold. Exhale as you circle the leg away in a clockwise direction and inhale as you circle the leg back. Repeat for 30 seconds. Then repeat in an anti-clockwise direction. Repeat on each side"),
        Pilates(imageName: "Single leg strech", title: "Single leg strech",description: "lay down with our backs resting on the floor with our legs flexed at an angle of 90º. Lay down with our backs resting on the floor with our legs flexed at an angle of 90º"),
        Pilates(imageName: "Cobra", title: "Cobra",description: "Begin by lying on your stomach, then use your arms to lift your torso off the ground. Hold this stretch. If this is too difficult, lower down to your forearms for a lighter stretch.")
    ]
}




struct PilatesCardView: View {
    let pilates: Pilates

    var body: some View {
        VStack {
            Image(pilates.imageName)
            Text(pilates.title)
        }
    }
}
