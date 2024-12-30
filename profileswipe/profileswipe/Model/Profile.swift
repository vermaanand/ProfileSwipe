//
//  Profile.swift
//  profileswipe
//
//  Created by Anand Verma on 29/12/24.
//

import Foundation
import SwiftUI

struct Profile: Identifiable {
    let id = UUID()
    let name: String
    let age: Int
    let profileImage: String
    let descriptions: String
    let profileColor: Color
}


enum SwipeDirection {
    case left
    case right
}

