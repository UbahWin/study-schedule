//
//  Day.swift
//  StudySchedule
//
//  Created by Иван Вдовин on 30.05.2023.
//

import Foundation

class Day: Identifiable {
    var date: Date = Date()
    var pairs: [Pair]
    
    init(pairs: [Pair]) {
        self.pairs = pairs
    }
}
