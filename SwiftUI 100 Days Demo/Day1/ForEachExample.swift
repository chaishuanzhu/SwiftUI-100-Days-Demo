//
//  ForEachExample.swift
//  SwiftUI 100 Days Demo
//
//  Created by FeiYu on 2021/8/29.
//

import SwiftUI

struct ForEachExample: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = 0
    var body: some View {
//        Form {
//            ForEach(0 ..< 100) {
//                Text("Row \($0)")
//            }
//        }
        VStack {
            Picker("Select your student", selection: $selectedStudent) {
                ForEach(0 ..< students.count) {
                    Text(self.students[$0])
                }
            }
            Text("You chose: Student # \(students[selectedStudent])")
        }
    }
}

struct ForEachExample_Previews: PreviewProvider {
    static var previews: some View {
        ForEachExample()
    }
}
