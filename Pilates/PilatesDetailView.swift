//
//  PilatesDetailView.swift
//  Exercises
//
//  Created by Alexander Neal on 5/8/25.
//

import SwiftUI
struct PilatesDetailView: View {
    
    let pilates: Pilates
    
    var body: some View {
        VStack (alignment: .leading){
            Image(pilates.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 250)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding(.vertical, 10)

            
            
            Text(pilates.imageName)
                .font(.title)
            
            HStack {
                Text("Pilates")
                    
                Spacer()
                Text(pilates.imageName)
            }
            .font(.subheadline)
            .foregroundStyle(.secondary)
            
            Divider()
            
            Text("About \(pilates.title)")
                .font(.title2)
                .padding(.bottom)
            Text(pilates.description)
        }
        .padding()
        
    }
            
            
        }
    
    
    
    #Preview {
        PilatesDetailView(pilates: PilatesList.topPilates[0])
    }

