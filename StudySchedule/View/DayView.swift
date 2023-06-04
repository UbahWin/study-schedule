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
            ForEach(day.pairsArray) { pair in
                PairView(pair: pair)
            }
        }
        .padding()
    }
}

//struct DayView_Previews: PreviewProvider {
//    static var previews: some View {
//        DayView()
//    }
//}
