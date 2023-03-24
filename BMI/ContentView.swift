//
//  ContentView.swift
//  BMI
//
//  Created by measthmatic on 20/03/23.
//

import SwiftUI

struct ContentView: View {
    @State private var index = 0
    @State private var weight: Double = 70
    @State private var height: Double = 172
    @State private var savedHistories = [
        Bmi(date: Date(), result: 24.22)
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                Picker("A", selection: $index) {
                    Text("Calculator").tag(0)
                    Text("History").tag(1)
                }
                .pickerStyle(.segmented)
                if index == 0 {
                    CalculatorView(
                        weight: $weight,
                        height: $height
                    )
                }
                else {
                    HistoryView(savedHistories: $savedHistories)
                }
            }
            .navigationTitle(Text("Body Mass Index"))
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
