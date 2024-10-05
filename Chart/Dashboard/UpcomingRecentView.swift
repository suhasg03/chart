//
//  UpcomingRecentView.swift
//  Chart
//
//  Created by Suhas G on 05/10/24.
//

import SwiftUI

struct UpcomingRecentView: View {
    
    private let items = [
        PopularPlacesModel(imageName: "mountains", name: "Mountains", id: 0),
        PopularPlacesModel(imageName: "mountains", name: "Canada", id: 0),
        PopularPlacesModel(imageName: "mountains", name: "Australia", id: 0),
        PopularPlacesModel(imageName: "mountains", name: "Seycheles", id: 0),
        PopularPlacesModel(imageName: "mountains", name: "Austria", id: 0)
    ]
    
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(items, id: \.id) { item in
                    UpcomingAndRecentPlacesView()
                        .padding(.horizontal, 10.0)
                }
            }
            .padding(.vertical, 5.0)
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    UpcomingRecentView()
}
