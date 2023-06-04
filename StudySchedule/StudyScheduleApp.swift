//
//  StudyScheduleApp.swift
//  StudySchedule
//
//  Created by Иван Вдовин on 30.05.2023.
//

import SwiftUI

@main
struct StudyScheduleApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
            .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
