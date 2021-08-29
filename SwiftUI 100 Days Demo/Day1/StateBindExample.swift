//  https://www.hackingwithswift.com/books/ios-swiftui/binding-state-to-user-interface-controls
//  StateBindExample.swift
//  SwiftUI 100 Days Demo
//
//  Created by FeiYu on 2021/8/29.
//

import SwiftUI

struct StateBindExample: View {
    
    @State private var name = ""
    
    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
            Text("Your name is \(name)")
        }
    }
}

struct StateBindExample_Previews: PreviewProvider {
    static var previews: some View {
        StateBindExample()
    }
}
