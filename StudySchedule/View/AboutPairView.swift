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
        Text(pair.name ?? "")
    }
}

struct AboutPairView_Previews: PreviewProvider {
    static var previews: some View {
        AboutPairView(pair: Pair(type: .lecure, number: 1, name: "Math", teacher: "Miska", info: "nissan"))
    }
}