//
//  PilatesListView.swift
//  Exercises
//
//  Created by Alexander Neal on 5/8/25.
//

import SwiftUI

var pilates : [Pilates] = PilatesList.topPilates

struct PilatesListView: View {
    var body: some View {
        NavigationView {
            List(pilates, id: \.id) { pilate in
                NavigationLink(destination: PilatesDetailView(pilates: Pilates(imageName: pilate.imageName, title: pilate.title, description: pilate.description)),
                               label: {
                    Image(pilate.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 80)
                        .clipShape(RoundedRectangle(cornerRadius: 5))
                        .padding(.vertical, 4)
                
                    Text(pilate.title)
                })
            }
        }
    }
}

#Preview {
    PilatesListView()
}
