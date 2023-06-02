//
//  PairView.swift
//  StudySchedule
//
//  Created by Иван Вдовин on 31.05.2023.
//

import SwiftUI

struct PairView: View {
    var pair: Pair
    @State private var openAbout = false
    
    var body: some View {
        HStack {
            Text("\(pair.number.toRoman())")
                .bold()
            Spacer()
            if pair.type != .empty {
                Text((pair.type.title.first?.description)!).bold()
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
        .border(Color(hex: 0xA18594), width: 3)
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
