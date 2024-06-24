//
//  UserModel.swift
//  Wavern
//
//  Created by Justin Jefferson on 25/06/24.
//

import SwiftUI
import Combine

class UserModel: ObservableObject {
    @Published var points: Int = 0
    @Published var isChallengeCompleted: Bool = false
    @Published var interviewedCount: Int = 0
}

