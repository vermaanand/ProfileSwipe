//
//  SwipeCardView.swift
//  profileswipe
//
//  Created by Anand Verma on 29/12/24.
//

import SwiftUI


struct SwipeCardView: View {
    let profile: Profile
    var onSwipe: (SwipeDirection) -> Void

    @State private var offset: CGSize = .zero
    @State private var rotation: Double = 0
    @State private var isSwiped: Bool = false

    var body: some View {
        ProfileCardView(profile: profile)
            .offset(offset)
            .padding(.horizontal, 15)
            .rotationEffect(.degrees(rotation), anchor: .bottom)
            .opacity(isSwiped ? 0 : 1) // Fade-out animation
            .animation(.spring(), value: isSwiped) // Smooth swipe animation
            .gesture(
                DragGesture()
                    .onChanged { gesture in
                        offset = gesture.translation
                        rotation = Double(offset.width / 20)
                    }
                    .onEnded { _ in
                        if offset.width > 150 {
                            swipe(.right)
                        } else if offset.width < -150 {
                            swipe(.left)
                        } else {
                            resetPosition()
                        }
                    }
            )
    }

    private func swipe(_ direction: SwipeDirection) {
        withAnimation {
            isSwiped = true
            offset = direction == .right ? CGSize(width: 500, height: 0) : CGSize(width: -500, height: 0)
        }
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            onSwipe(direction)
        }
    }

    private func resetPosition() {
        withAnimation {
            offset = .zero
            rotation = 0
        }
    }
}


struct SwipeProfileFeatureView: View {
        
    var body: some View {
        VStack {
            Text("Swipe Profiles")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .padding()


            CardStackView()
            
            SwipeButton()
            
            Spacer()
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}


struct SwipeProfileFeatureView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeProfileFeatureView()
    }
}
