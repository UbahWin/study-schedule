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
}
