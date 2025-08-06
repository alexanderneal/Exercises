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
        
            ZStack {
                VStack {
                    TitleAndDateViewer()
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
                    }.listStyle(.inset)
                }
            }
        }
    }
}

struct TitleAndDateViewer: View {
        
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(formattedDate())
                .font(.system(size: 13))
                .foregroundColor(.gray)
                .padding(.top, 20)
            Text("Exercises")
                .font(.title)
                .bold()
        }
    }
    
    private func formattedDate() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, d MMM"
        dateFormatter.locale = Locale.current
        return dateFormatter.string(from: Date()).uppercased()
    }
}

#Preview {
    PilatesListView()
}
