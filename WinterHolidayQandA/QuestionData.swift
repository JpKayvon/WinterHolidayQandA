//
//  QuestionData.swift
//  WinterHolidayQandA
//
//  Created by MACUser on 2018/02/06.
//  Copyright © 2018 MACUser. All rights reserved.
//

import Foundation

struct Question {
    var number: Number
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum Number {
    case A,B,C,D,E,F,G,H,I,J
}
enum ResponseType {
    case single, ranged
}

struct Answer {
    var text: String
    var type: BodyType
}

enum BodyType: Character {
    case healthy = "🍎", quiteHealthy = "🍣", quiteUnhealthy = "🍝", unhealthy = "🍟"
    
    var definition: String {
        switch self {
        case .unhealthy:
            return "Couch potato! You need to make some drastic changes to your life style"
        case .quiteUnhealthy:
            return "You're not as healthy as you could be. You'll need to review your diet and life style"
        case .quiteHealthy:
            return "You're quite healthy for your age."
        case .healthy:
            return "You're in peak condition. Keep up the good work!"
        }
    }
}
