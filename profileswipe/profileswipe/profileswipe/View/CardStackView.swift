//
//  CardStackView.swift
//  profileswipe
//
//  Created by Anand Verma on 29/12/24.
//

import SwiftUI


struct CardStackView: View {
    @State private var profiles: [Profile] = [
        Profile(name: "Alice", age: 25, profileImage: "1", descriptions: "Alice loves hiking, photography, and spending time with her dog.", profileColor: .green),
        Profile(name: "Bob", age: 27, profileImage: "2", descriptions: "Bob is a software engineer who enjoys playing guitar and traveling.", profileColor: .blue),
        Profile(name: "Cathy", age: 23, profileImage: "3", descriptions: "Cathy is a yoga instructor and a food blogger with a passion for cooking.",profileColor: .yellow ),
        Profile(name: "Marco", age: 29, profileImage: "4", descriptions: "Marco is a yoga instructor and a food blogger with a passion for cooking.", profileColor: .orange),
        Profile(name: "Maria", age: 30, profileImage: "5", descriptions: "Maria is a yoga instructor and a food blogger with a passion for cooking.", profileColor: .indigo),
        Profile(name: "Senta", age: 25, profileImage: "1", descriptions: "Senta is a yoga instructor and a food blogger with a passion for cooking.", profileColor: .pink)

    ]
    
    @State private var removedProfiles: [Profile] = []

    var body: some View {
        ZStack {
            ForEach(profiles.reversed()) { profile in
                SwipeCardView(
                    profile: profile,
                    onSwipe: { direction in
                        handleSwipe(profile: profile, direction: direction)
                    }
                )
            }
        }
        .padding()
    }
    
    private func handleSwipe(profile: Profile, direction: SwipeDirection) {
        removedProfiles.append(profile)
        profiles.removeAll(where: { $0.id == profile.id })
    }
}
