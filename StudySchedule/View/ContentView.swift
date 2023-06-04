//
//  ContentView.swift
//  StudySchedule
//
//  Created by Иван Вдовин on 30.05.2023.
//

import SwiftUI

struct ContentView: View {
    @State var nextWeek: String = ""
    @State var infoWeek: Bool = false
    
    @FetchRequest(sortDescriptors: []) var days: FetchedResults<Day>
    @Environment(\.managedObjectContext) var moc
    
    func exampleData() {
        let examplePair1 = Pair(context: moc)
        examplePair1.classroom = "123d"
        examplePair1.id = UUID()
        examplePair1.info = "adf"
        examplePair1.name = "Math"
        examplePair1.number = 1
        examplePair1.teacher = "miska"
        examplePair1.type = .lecure
        
        let examplePair2 = Pair(context: moc)
        examplePair2.classroom = "asdasf"
        examplePair2.id = UUID()
        examplePair2.info = "adf"
        examplePair2.name = "asfafs"
        examplePair2.number = 2
        examplePair2.teacher = "aw1w"
        examplePair2.type = .practice
        
        let exampleDay = Day(context: moc)
        exampleDay.date = .monday
        exampleDay.addToPairs(examplePair1)
        exampleDay.addToPairs(examplePair2)
        
        try? moc.save()
    }
    
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
                        Button("Чётная") {
//                            nextWeek = content.week == .even ? "Нечётная" : "Чётная"
                            infoWeek = true
                        }
                    }
                }
            }
            .alert(isPresented: $infoWeek) {
                Alert(title: Text("Сейчас \(nextWeek), с такого-то числа будет \(nextWeek)")) // TODO: с какого числа
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
