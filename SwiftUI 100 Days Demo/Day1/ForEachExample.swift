//
//  ForEachExample.swift
//  SwiftUI 100 Days Demo
//
//  Created by FeiYu on 2021/8/29.
//

import SwiftUI

struct ForEachExample: View {
    var body: some View {
        Form {
            ForEach(0 ..< 100) { number in
                Text("Row \(number)")
            }
        }
    }
}

struct ForEachExample_Previews: PreviewProvider {
    static var previews: some View {
        ForEachExample()
    }
}
