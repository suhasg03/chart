//
//  PopularPlacesItemView.swift
//  Chart
//
//  Created by Suhas G on 05/10/24.
//

import SwiftUI

struct PopularPlacesItemView: View {
    
    private let imageName: String
    private let name: String
    
    init(imageName: String, name: String) {
        self.imageName = imageName
        self.name = name
    }
    
    var body: some View {
        HStack(alignment: .center, spacing: 15.0) {
            Image(uiImage: UIImage(named: "mountains")!)
                .resizable()
                .frame(width: 35.0, height: 35.0)
                .clipShape(RoundedRectangle(cornerRadius: 12.0))
            
            Text("Mountains")
                .font(.custom("GillSans", size: 17.0))
                .fontWeight(.semibold)
        }
        .padding(.horizontal, 20.0)
        .padding(.vertical, 15.0)
        .background(Color.white)
        .cornerRadius(25.0)
        .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 0, y: 3)
    }
}

#Preview {
    PopularPlacesItemView(
        imageName: "mountains", name: "Mountains"
    )
}
