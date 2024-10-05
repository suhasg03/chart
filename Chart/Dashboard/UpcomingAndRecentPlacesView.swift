//
//  UpcomingAndRecentView.swift
//  Chart
//
//  Created by Suhas G on 05/10/24.
//

import SwiftUI

struct UpcomingAndRecentPlacesView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image(uiImage: UIImage(named: "mountains")!)
                .resizable()
                .frame(width: 140, height: 160)
                .clipShape(RoundedRectangle(cornerRadius: 15.0))
            
            HStack {
                Text("Canada")
                    .font(.custom("GillSans", size: 18.0))
                    .fontWeight(.semibold)
                Spacer()
                Image(systemName: "chevron.forward")
                    .fontWeight(.semibold)
            }
            
            Text("June 06")
                .font(.custom("GillSans", size: 15.0))
                .fontWeight(.semibold)
                .foregroundStyle(Color.gray)
            
        }
        .frame(width: 140)
        .padding(12.5)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 15.0))
        .shadow(color: Color.gray.opacity(0.5), radius: 3, x: 0, y: 3)
    }
}

#Preview {
    UpcomingAndRecentPlacesView()
}
