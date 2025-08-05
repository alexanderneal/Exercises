//
//  AbstractView.swift
//  Exercises
//
//  Created by Alexander Neal on 4/8/25.
//

import SwiftUI

struct AbstractView: View {
    var body: some View {
        
        VStack {
            Text("Hi network")
                .padding()
            Image(systemName: "globe")
        }
        
    }
}

#Preview {
    AbstractView()
}
