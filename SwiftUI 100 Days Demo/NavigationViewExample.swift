//
//  NavigationViewExample.swift
//  SwiftUI 100 Days Demo
//
//  Created by FeiYu on 2021/8/29.
//

import SwiftUI

struct NavigationViewExample: View {
    var body: some View {
        NavigationView {
            FormExample()
                .navigationBarTitle(Text("SwiftUI"), displayMode: .inline)
        }
    }
}

struct NavigationViewExample_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewExample()
    }
}
