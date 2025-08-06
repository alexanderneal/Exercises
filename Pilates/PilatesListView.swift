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
                    ScrollView{
                        LazyVStack{
                            ForEach(pilates) { pilate in
                                NavigationLink(destination: PilatesDetailView(pilates: Pilates(imageName: pilate.imageName, title: pilate.title, description: pilate.description)),
                                               label: {
                                    ZStack {
                                        HStack{
                                            Image(pilate.imageName)
                                                .resizable()
                                                .scaledToFit()
                                                .frame(height: 80)
                                                .clipShape(RoundedRectangle(cornerRadius: 5))
                                                .padding(.vertical)
                                            
                                            Text(pilate.title)
                                                .frame(alignment: .trailing)
                                            
                                        }.font(.system(.headline))
                                            .frame(maxWidth: .infinity, minHeight: 100, alignment: .leading)
                                            .padding(.leading)
                                            .background(
                                                ConcentricShape()
                                                    .fill(Color.secondary.opacity(0.2))
                                            )
                                            .overlay(
                                                ConcentricShape()
                                                    .stroke(Color.secondary, lineWidth: 2)
                                                
                                            )
                                            .clipShape(ConcentricShape())
                                            .padding(.horizontal, 15)
                                            .padding(.vertical, 3)
                                    }
                                })
                            }
                        }
                    }
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
