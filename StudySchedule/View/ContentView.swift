//
//  ContentView.swift
//  StudySchedule
//
//  Created by Иван Вдовин on 30.05.2023.
//

import SwiftUI

struct ContentView: View {
    var content: Content
    @State var nextWeek: String = ""
    @State var infoWeek: Bool = false
    
    var body: some View {
        NavigationStack() {
            List(content.days) { day in
                Section {
                    DayView(day: day)
                        .listRowBackground(Color(hex: 0xFFF0F5))
                }
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Text(Date(), style: .date).font(.subheadline)
                        Spacer()
                        Button(content.week.title) {
                            nextWeek = content.week == .even ? "Нечётная" : "Чётная"
                            infoWeek = true
                        }
                    }
                }
            }
            .alert(isPresented: $infoWeek) {
                Alert(title: Text("Сейчас \(content.week.title), с такого-то числа будет \(nextWeek)")) // TODO: с какого числа
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(content: Content(days: [
            Day(pairs: [
                Pair(type: .lecure, number: 1, name: "Математика и прикладные хузалуаы", teacher: "Miska", classroom: "432а", info: "nissan"),
                Pair(number: 2),
                Pair(type: .practice, number: 3, name: "игры лололошка", teacher: "Piska", classroom: "465", info: "nan"),
                Pair(number: 4),
                Pair(type: .practice, number: 5, name: "dashajsdmcknjsjdc", teacher: "adfdsgdfs", classroom: "465as", info: "nan")
            ]),
            Day(pairs: [
                Pair(type: .lecure, number: 1, name: "Math", teacher: "Miska", info: "nissan"),
                Pair(number: 2),
                Pair(type: .practice, number: 3, name: "Game", teacher: "Piska", info: "nan")
            ]),
            Day(pairs: [
                Pair(type: .lecure, number: 1, name: "sqwer", teacher: "Miska", info: "nissan"),
                Pair(number: 2),
                Pair(type: .practice, number: 3, name: "Game", teacher: "Piska", info: "nan")
            ])
        ], week: .even))
    }
}
