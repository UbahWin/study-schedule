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
        if pair.type != .empty {
            HStack {
                Text("\(pair.number.toRoman())")
                    .bold()
                Spacer()
                Text((pair.type.title.first?.description)!).bold()
                Spacer()
                Text(pair.name ?? "").bold()
                Spacer()
            }
            .font(.system(size: 20))
            .frame(maxWidth: .infinity)
            .padding()
            .background(.gray)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .onTapGesture {
                openAbout = true
            }
            .sheet(isPresented: $openAbout, content: { AboutPairView(pair: pair) })
        } else {
            EmptyPairView(number: Int(pair.number))
        }
    }
}

//struct PairView_Previews: PreviewProvider {
//    static var previews: some View {
//        PairView()
//    }
//}
