//
//  Pair+CoreDataProperties.swift
//  StudySchedule
//
//  Created by Иван Вдовин on 04.06.2023.
//
//

import Foundation
import CoreData


extension Pair {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Pair> {
        return NSFetchRequest<Pair>(entityName: "Pair")
    }

    @NSManaged public var classroom: String?
    @NSManaged public var id: UUID?
    @NSManaged public var info: String?
    @NSManaged public var name: String?
    @NSManaged public var number: Int16
    @NSManaged public var teacher: String?
    @NSManaged public var typeValue: Int16
    @NSManaged public var day: Day?
    
}

extension Pair: Identifiable {
    var type: PairType {
        get { return PairType(rawValue: self.typeValue)! }
        set { self.typeValue = newValue.rawValue }
    }
}

enum PairType: Int16 {
    case lecure, practice, empty

    var title: String {
        switch self {
        case .lecure: return "Лекция"
        case .practice: return "Практика"
        case .empty: return "Окно"
        }
    }
}
