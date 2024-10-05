//
//  ProfileImageWithBorder.swift
//  Chart
//
//  Created by Suhas G on 05/10/24.
//

import SwiftUI

struct ProfileImageWithBorder: View {
    
    private let imageName: String
    private let width: CGFloat
    private let height: CGFloat
    private let alignment: Alignment
    private let borderColor: Color
    
    init(imageName: String, width: CGFloat, height: CGFloat, alignment: Alignment, borderColor: Color) {
        self.imageName = imageName
        self.width = width
        self.height = height
        self.alignment = alignment
        self.borderColor = borderColor
    }
    
    var body: some View {
        Image(systemName: self.imageName)
            .resizable()
            .frame(width: self.width, height: self.height, alignment: self.alignment)
            .padding(1)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(self.borderColor, lineWidth: 2.0)
            )
            .shadow(color: Color.gray.opacity(0.5), radius: 3, x: 0, y: 3)
    }
}

#Preview {
    ProfileImageWithBorder(
        imageName: "person.crop.circle.fill",
        width: 40,
        height: 40.0,
        alignment: .leading,
        borderColor: Color.blue
    )
}
