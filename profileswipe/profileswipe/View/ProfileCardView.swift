//
//  ProfileCardView.swift
//  profileswipe
//
//  Created by Anand Verma on 29/12/24.
//

import SwiftUI



struct ProfileCardView: View {
    let profile: Profile
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            Image(profile.profileImage)
                .resizable()
                .frame(height: 400)
                .background(profile.profileColor)
                .cornerRadius(10)

            Text("\(profile.name), \(profile.age)")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(profile.profileColor)
            
            Text(profile.descriptions) // Multiline description
                .font(.subheadline)
                .foregroundColor(.gray)
                .multilineTextAlignment(.leading)
                .lineLimit(3) // Optional: Limit to 3 lines
                .padding(.bottom, 40)

            
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(color: profile.profileColor.opacity(0.2), radius: 8, x: 0, y: 8)

    }
}
