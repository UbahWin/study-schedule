//
//  Pair.swift
//  StudySchedule
//
//  Created by Иван Вдовин on 30.05.2023.
//

import Foundation

class Pair: Identifiable {
    var type: PairType = .empty
    var number: Int
    var name: String?
    var teacher: String?
    var classroom: String?
    var info: String?
    
    init(type: PairType, number: Int, name: String? = nil, teacher: String? = nil, classroom: String? = nil, info: String? = nil) {
        self.type = type
        self.number = number
        self.name = name
        self.teacher = teacher
        self.classroom = classroom
        self.info = info
    }
    
    init(number: Int) {
        self.number = number
    }
}

enum PairType {
    case lecure, practice, empty
    
    var title: String {
        switch self {
        case .lecure: return "Лекция"
        case .practice: return "Практика"
        case .empty: return "Окно"
        }
    }
}
