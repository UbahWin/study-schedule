//
//  DataController.swift
//  StudySchedule
//
//  Created by Иван Вдовин on 02.06.2023.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "Schedule")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Error: \(error.localizedDescription)")
            }
        }
    }
    
    func addDay(date: WeekDay, moc: NSManagedObjectContext) {
        let newDay = Day(context: moc)
        newDay.date = date
        try? moc.save()
    }
    
    func addPair(day: Day, classroom: String, info: String, name: String, number: Int16, teacher: String, type: PairType, moc: NSManagedObjectContext) {
        let newPair = Pair(context: moc)
        newPair.day = day
        newPair.id = UUID()
        newPair.classroom = classroom
        newPair.info = info
        newPair.name = name
        newPair.number = number
        newPair.teacher = teacher
        newPair.type = type
        try? moc.save()
    }
    
    func editPair(pair: Pair, classroom: String, info: String, name: String, number: Int16, teacher: String, type: PairType, moc: NSManagedObjectContext) {
        pair.classroom = classroom
        pair.info = info
        pair.name = name
        pair.number = number
        pair.teacher = teacher
        pair.type = type
        try? moc.save()
    }
}
