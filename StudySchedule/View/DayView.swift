//
//  DayView.swift
//  StudySchedule
//
//  Created by Иван Вдовин on 30.05.2023.
//

import SwiftUI

struct DayView: View {
    var day: Day
    
    var body: some View {
        VStack {
            HStack {
                Text(Date(), style: .date)
                Spacer()
                Text("Сегодня")
            }
            ForEach(day.pairs) { pair in
                PairView(pair: pair)
            }
        }
        .padding()
    }
}

struct DayView_Previews: PreviewProvider {
    static var previews: some View {
        DayView(day: Day(pairs: [
            Pair(type: .lecure, number: 1, name: "Математика и прикладные хузалуаы", teacher: "Miska", classroom: "432а", info: "nissan"),
            Pair(number: 2),
            Pair(type: .practice, number: 3, name: "игры лололошка", teacher: "Piska", classroom: "465", info: "nan")
        ]))
    }
}
