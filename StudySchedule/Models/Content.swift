//
//  Content.swift
//  StudySchedule
//
//  Created by Иван Вдовин on 31.05.2023.
//

import Foundation

class Content {
    var days: [Day]
    var week: Week
    
    init(days: [Day], week: Week) {
        self.days = days
        self.week = week
    }
}

enum Week {
    case even, odd
    
    var title: String {
        switch self {
        case .even: return "Чётная"
        case .odd: return "Нечётная"
        }
    }
}
