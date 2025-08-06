//
//  AboveAllView.swift
//  Exercises
//
//  Created by Alexander Neal on 4/8/25.
//

import SwiftUI

struct AboveAllView: View {
    
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "dumbbell")
                    Text("Weights")
                }
               PilatesListView()
                .tabItem{
                    Image(systemName: "figure.cooldown")
                    Text("Pilates")
                }
        }
        
    }
}
#Preview {
    AboveAllView()
}
