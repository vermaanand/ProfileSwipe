//
//  SwipeButton.swift
//  profileswipe
//
//  Created by Anand Verma on 29/12/24.
//

import SwiftUI

struct SwipeButton: View {
    var body: some View {
        HStack(spacing: 30) {
            
            // Like Button
            Button(action: {
                print("Like button tapped")
            }) {
                VStack {
                    Image(systemName: "heart.fill")
                        .font(.title)
                        .foregroundColor(.red)
                }
                .frame(width: 60, height: 60) // Circle size
                .background(Color.white)
                .clipShape(Circle())
                .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 4)
            }
            
            // Message Button
            Button(action: {
                print("Message button tapped")
            }) {
                VStack {
                    Image(systemName: "message.fill")
                        .font(.title)
                        .foregroundColor(.blue)
                }
                .frame(width: 60, height: 60) // Circle size
                .background(Color.white)
                .clipShape(Circle())
                .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 4)
            }
            
            // Hide Button
            Button(action: {
                print("Hide button tapped")
            }) {
                VStack {
                    Image(systemName: "xmark")
                        .font(.title)
                        .foregroundColor(.gray)
                }
                .frame(width: 60, height: 60) // Circle size
                .background(Color.white)
                .clipShape(Circle())
                .shadow(color: Color.black.opacity(0.2), radius: 6, x: 0, y: 4)
            }
        }
    }
}
