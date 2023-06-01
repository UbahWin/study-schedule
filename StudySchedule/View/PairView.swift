//
//  PairView.swift
//  StudySchedule
//
//  Created by Иван Вдовин on 31.05.2023.
//

import SwiftUI

struct PairView: View {
    @State var pair: Pair
    @State private var openAbout = false
    
    var body: some View {
        HStack {
            Text("\(pair.number.toRoman())")
                .bold()
            Spacer()
            
            if pair.type != .empty {
                Text((pair.type.title.first?.description)!).bold()
                Spacer()
                Text(pair.classroom ?? "")
                Spacer()
                Text(pair.name ?? "").bold()
            } else {
                Text(pair.type.title).italic()
            }
            Spacer()
        }
        .font(.system(size: 20))
        .frame(maxWidth: .infinity)
        .padding()
        .border(.gray)
        .onTapGesture {
            openAbout = true
        }
        .sheet(isPresented: $openAbout, content: { AboutPairView(pair: pair) })
    }
}

struct PairView_Previews: PreviewProvider {
    static var previews: some View {
        PairView(pair: Pair(type: .lecure, number: 1, name: "Математика", teacher: "Miska", classroom: "432а", info: "nissan"))
    }
}

extension Int {
    func toRoman() -> String {
        let conversionTable: [(intNumber: Int, romanNumber: String)] =
            [(1000, "M"),
             (900, "CM"),
             (500, "D"),
             (400, "CD"),
             (100, "C"),
             (90, "XC"),
             (50, "L"),
             (40, "XL"),
             (10, "X"),
             (9, "IX"),
             (5, "V"),
             (4, "IV"),
             (1, "I")]
        var roman = ""
        var remainder = 0
        
        for entry in conversionTable {
            let quotient = (self - remainder) / entry.intNumber
            remainder += quotient * entry.intNumber
            roman += String(repeating: entry.romanNumber, count: quotient)
        }
        
        return roman
    }
}
