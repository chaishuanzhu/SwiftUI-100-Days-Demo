//  https://www.hackingwithswift.com/books/ios-swiftui/modifying-program-state
//  StateExample.swift
//  SwiftUI 100 Days Demo
//
//  Created by FeiYu on 2021/8/29.
//

import SwiftUI

struct StateExample: View {
    @State var tapCount = 0
    var body: some View {
        Button("Tap Count \(tapCount)") {
            self.tapCount += 1
        }
    }
}

struct StateExample_Previews: PreviewProvider {
    static var previews: some View {
        StateExample()
    }
}
