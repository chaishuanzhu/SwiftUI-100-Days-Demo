//
//  TimeConversionExample.swift
//  SwiftUI 100 Days Demo
//
//  Created by FeiYu on 2021/8/29.
//

import SwiftUI

struct TimeStruct {
    var unit: String
    var value: Int
}

struct TimeConversionExample: View {
    @State private var time = ""
    @State private var unit = 0
    @State private var targetUnit = 0
    let timeUnits = ["seconds", "minutes", "hours", "days"]
    let timeUnitsValues = [1,
                           60,
                           60 * 60,
                           24 * 60 * 60]
    
    var targetTime: Double {
        let time = Double(time) ?? 0.0
        let totalSeconds = time * Double(timeUnitsValues[unit])
        let targetTime = totalSeconds / Double(timeUnitsValues[targetUnit])
        return targetTime
    }
    
    var body: some View {
        NavigationView {
            Form {
                
                Section(header: Text("Time")) {
                    TextField("Time", text: $time)
                        .keyboardType(.numberPad)
                    Picker("Unit", selection: $unit) {
                        ForEach(0 ..< timeUnits.count) {
                            Text("\(self.timeUnits[$0])")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    Picker("Target unit", selection: $targetUnit) {
                        ForEach(0 ..< timeUnits.count) {
                            Text("\(self.timeUnits[$0])")
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section(header: Text("Target")) {
                    Text("\(targetTime, specifier: "%.2f")")
                }
            }
        }
        
        
    }
}

struct TimeConversionExample_Previews: PreviewProvider {
    static var previews: some View {
        TimeConversionExample()
    }
}
