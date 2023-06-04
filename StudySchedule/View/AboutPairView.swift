//
//  AboutPairView.swift
//  StudySchedule
//
//  Created by Иван Вдовин on 31.05.2023.
//

import SwiftUI

struct AboutPairView: View {
    var pair: Pair
    
    var body: some View {
        VStack() {
            Spacer()
            Text(pair.name ?? "")
                .font(.largeTitle)
            Spacer()
            List {
                HStack {
                    Text("По типу пара")
                    Spacer()
                    Text(pair.type.title)
                }
                HStack {
                    Text("Аудитория")
                    Spacer()
                    Text(pair.classroom ?? "")
                }
                HStack {
                    Text("Преподаватель")
                    Spacer()
                    Text(pair.teacher ?? "")
                }
                HStack {
                    Text("Дополнительная информация")
                    Spacer()
                    Text(pair.info ?? "")
                }
            }
        }
    }
}
