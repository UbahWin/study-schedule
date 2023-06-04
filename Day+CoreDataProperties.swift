//
//  Day+CoreDataProperties.swift
//  StudySchedule
//
//  Created by Иван Вдовин on 04.06.2023.
//
//

import Foundation
import CoreData


extension Day {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Day> {
        return NSFetchRequest<Day>(entityName: "Day")
    }

    @NSManaged public var dateValue: Int16
    @NSManaged public var pairs: NSSet?

    public var pairsArray: [Pair] {
        let set = pairs as? Set<Pair> ?? []
        
        return set.sorted() {
            $0.number < $1.number
        }
    }
}

extension Day: Identifiable {
    var date: WeekDay {
        get { return WeekDay(rawValue: self.dateValue)! }
        set { self.dateValue = newValue.rawValue }
    }
}

enum WeekDay: Int16 {
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday

    var title: String {
        switch self {
        case .monday: return "Понедельник"
        case .tuesday: return "Вторник"
        case .wednesday: return "Среда"
        case .thursday: return "Чертверг"
        case .friday: return "Пятница"
        case .saturday: return "Суббота"
        case .sunday: return "Воскресенье"
        }
    }
}

// MARK: Generated accessors for pairs
extension Day {

    @objc(addPairsObject:)
    @NSManaged public func addToPairs(_ value: Pair)

    @objc(removePairsObject:)
    @NSManaged public func removeFromPairs(_ value: Pair)

    @objc(addPairs:)
    @NSManaged public func addToPairs(_ values: NSSet)

    @objc(removePairs:)
    @NSManaged public func removeFromPairs(_ values: NSSet)

}

