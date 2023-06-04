//
//  ContentView.swift
//  StudySchedule
//
//  Created by Иван Вдовин on 30.05.2023.
//

import SwiftUI

struct ContentView: View {
    @State var isWeekAlert: Bool = false
    
    @FetchRequest(sortDescriptors: []) var days: FetchedResults<Day>
    @Environment(\.managedObjectContext) var moc
    
    var body: some View {
        NavigationStack() {
            List(days) { day in
                Section {
                    DayView(day: day)
                }
            }
            .toolbar {
                ToolbarItem(placement: .principal) {
                    HStack {
                        Text(Date(), style: .date).font(.subheadline)
                        Spacer()
                        NavigationLink(destination: { EditingView() }, label: { Image(systemName: "square.and.pencil") })
                        Spacer()
                        Button(Date().isWeekEven() ? "Нечётная" : "Чётная") {
                            isWeekAlert = true
                        }
                    }
                }
            }
            .alert(isPresented: $isWeekAlert) {
                Alert(title: Text("Сейчас \(Date().isWeekEven() ? "Нечётная" : "Чётная"), с такого-то числа будет \(Date().isWeekEven() ? "Чётная" : "Нечётная")")) // TODO: с какого числа
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(
            
//            content: Content(days: [
//            Day(pairs: [
//                Pair(type: .lecure, number: 1, name: "Математика и прикладные хузалуаы", teacher: "Miska", classroom: "432а", info: "nissan"),
//                Pair(number: 2),
//                Pair(type: .practice, number: 3, name: "игры лололошка", teacher: "Piska", classroom: "465", info: "nan"),
//                Pair(number: 4),
//                Pair(type: .practice, number: 5, name: "dashajsdmcknjsjdc", teacher: "adfdsgdfs", classroom: "465as", info: "nan")
//            ]),
//            Day(pairs: [
//                Pair(type: .lecure, number: 1, name: "Math", teacher: "Miska", info: "nissan"),
//                Pair(number: 2),
//                Pair(type: .practice, number: 3, name: "Game", teacher: "Piska", info: "nan")
//            ]),
//            Day(pairs: [
//                Pair(type: .lecure, number: 1, name: "sqwer", teacher: "Miska", info: "nissan"),
//                Pair(number: 2),
//                Pair(type: .practice, number: 3, name: "Game", teacher: "Piska", info: "nan")
//            ])
//        ], week: .even)
            
            
            
            )
    }
}
