//
//  TextFieldExample.swift
//  SwiftUI 100 Days Demo
//
//  Created by FeiYu on 2021/8/29.
//

import SwiftUI

struct TextFieldExample: View {
    @State private var checkAmount = ""
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 2
    let tipPercentages = [10, 15, 20, 25, 0]
    var body: some View {
        Form {
            Section {
                TextField("Amount", text: $checkAmount)
                    .keyboardType(.decimalPad)
            }
            
            Section {
                Text("$\(checkAmount)")
            }
        }
        
    }
}

struct TextFieldExample_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldExample()
    }
}
