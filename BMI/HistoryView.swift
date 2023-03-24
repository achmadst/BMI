//
//  HistoryView.swift
//  BMI
//
//  Created by measthmatic on 24/03/23.
//

import SwiftUI

struct HistoryView: View {
    @Binding var savedHistories: [Bmi]
    
    var body: some View {
        List(savedHistories) { bmi in
            VStack(alignment: .leading) {
                Text("\(Date().formatted(date: .abbreviated, time: .shortened))")
                HStack {
                    Text("33.15")
                        .font(.title)
                        .bold()
                    Spacer()
                    Text("Obese")
                        .font(.title2)
                        .foregroundColor(.orange)
                }
            }
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView(
            savedHistories: .constant([Bmi(date: Date(), result: 22.5)])
        )
    }
}
