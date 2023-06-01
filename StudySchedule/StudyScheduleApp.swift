//
//  StudyScheduleApp.swift
//  StudySchedule
//
//  Created by Иван Вдовин on 30.05.2023.
//

import SwiftUI

@main
struct StudyScheduleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(content: Content(days: [Day(pairs: [
                Pair(type: .lecure, number: 1, name: "Math", teacher: "Miska", info: "nissan"),
                Pair(number: 2),
                Pair(type: .practice, number: 3, name: "Game", teacher: "Piska", info: "nan")
            ])], week: .even))
        }
    }
}
