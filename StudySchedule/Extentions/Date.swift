//
//  Date.swift
//  StudySchedule
//
//  Created by Иван Вдовин on 04.06.2023.
//

import Foundation

extension Date {
    func isWeekEven() -> Bool {
        let calendar = Calendar.current
        let weekOfYear = calendar.component(.weekOfYear, from: self)
        return weekOfYear % 2 == 0
    }
}
