//
//  EmptyPairView.swift
//  StudySchedule
//
//  Created by Иван Вдовин on 02.06.2023.
//

import SwiftUI

struct EmptyPairView: View {
    var number: Int
    
    var body: some View {
        HStack {
            Text(number.toRoman())
            Spacer()
            Text("Окно")
            Spacer()
        }
        .font(.system(size: 25))
        .bold()
        .frame(maxWidth: .infinity)
        .padding()
        .border(.gray, width: 3)
    }
}

struct EmptyPairView_Previews: PreviewProvider {
    static var previews: some View {
        EmptyPairView(number: 4)
    }
}
