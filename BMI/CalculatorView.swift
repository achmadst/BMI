//
//  CalculatorView.swift
//  BMI
//
//  Created by measthmatic on 20/03/23.
//

import SwiftUI

struct CalculatorView: View {
    @Binding var weight: Double
    @Binding var height: Double
    
    var body: some View {
        VStack {
            HStack {
                Text("Weight (kg)")
                    .font(.body)
                    .foregroundColor(Color.gray)
                Spacer()
                Text("\(String(format: "%0.f",weight))")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
            }
            .padding(.top, 30.0)
            Slider(value: $weight, in: 45...120)
            Divider()
            
            HStack {
                Text("Height (cm)")
                    .font(.body)
                    .foregroundColor(Color.gray)
                Spacer()
                Text("\(String(format: "%0.f",height))")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
            }
            .padding(.top, 20.0)
            Slider(value: $height, in: 100...200)
            Divider()
            
            HStack {
                Text("Your Body Mass Index")
                    .font(.body)
                    .foregroundColor(Color.gray)
                Spacer()
                VStack(alignment: .trailing) {
                    Text("\(String(format: "%0.2f", calculateBmi()))")
                        .font(.title)
                        .fontWeight(.bold)
                
                    Text("Normal")
                        .font(.body)
                        .foregroundColor(Color.green)
                    }
                }
            .padding(.top, 20.0)
            
            Button {
                print("Save")
            } label: {
                Text("Save to History")
                    .frame(maxWidth: .infinity, maxHeight: 32.0)
            }
            .background(.blue)
            .buttonStyle(.bordered)
            .foregroundColor(Color.white)
            .cornerRadius(8)
            .padding(.top, 20.0)
            
            Spacer()
            }
        .padding()
        }
        
    func calculateBmi() -> Double {
        return weight * 10_000 / (height * height)
    }
    
//    func bmiScale() -> String {
//
//    }
    
}

struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView(
            weight: .constant(70), height: .constant(172)
        )
    }
}
