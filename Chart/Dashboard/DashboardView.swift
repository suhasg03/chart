//
//  DashboardView.swift
//  Chart
//
//  Created by Suhas G on 05/10/24.
//

import SwiftUI

struct DashboardView: View {
    
    @State private var locationSearch: String = ""
    @State private var isUpcomingSelected: Bool = true
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                HStack {
                    ProfileImageWithBorder(imageName: "person.crop.circle.fill", width: 40.0, height: 40.0, alignment: .leading, borderColor: Color.white)
                    Spacer()
                    ProfileImageWithBorder(imageName: "bell.circle.fill", width: 40.0, height: 40.0, alignment: .leading, borderColor: Color.white)
                }
                
                Text("Discover")
                    .padding(.top, 10.0)
                    .font(.custom("GillSans", size: 35.0))
                    .fontWeight(.semibold)
                Text("a New World")
                    .font(.custom("GillSans", size: 35.0))
                    .fontWeight(.semibold)
                
                HStack {
                    TextField("Location, Country", text: self.$locationSearch)
                        .frame(height: 50.0)
                        .tint(Color.secondaryGreen)
                    Spacer()
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 25, height: 25, alignment: .leading)
                        .padding(.trailing, 10.0)
                        .foregroundStyle(Color.gray.opacity(0.5))
                        .padding(.leading, 10)
                }
                .padding(.horizontal, 15.0)
                .padding(.vertical, 7.5)
                .background(Color.white)
                .cornerRadius(30.0)
                .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 0, y: 3)
                
                Text("Popular")
                    .padding(.top, 10.0)
                    .font(.custom("GillSans", size: 25.0))
                    .fontWeight(.semibold)
                
                PopularPlacesView()
                    .padding(.horizontal, -20.0)
                
                HStack(spacing: 30.0) {
                    Text("Upcoming")
                        .padding(.top, 10.0)
                        .font(.custom("GillSans", size: 25.0))
                        .fontWeight(.semibold)
                        .foregroundStyle(self.isUpcomingSelected ? .secondaryGreen : Color.gray.opacity(0.5))
                        .onTapGesture {
                            self.isUpcomingSelected.toggle()
                        }
                    
                    Text("Recents")
                        .padding(.top, 10.0)
                        .font(.custom("GillSans", size: 25.0))
                        .fontWeight(.semibold)
                        .foregroundStyle(self.isUpcomingSelected ? Color.gray.opacity(0.5) : .secondaryGreen)
                        .onTapGesture {
                            self.isUpcomingSelected.toggle()
                        }
                }
                UpcomingRecentView()
                    .padding(.horizontal, -20.0)
                
            }
            .padding(.horizontal, 20.0)
        }
        .background(Color.primaryBackground)
    }
}

#Preview {
    DashboardView()
}
