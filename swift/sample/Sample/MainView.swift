//
//  MainView.swift
//

import SwiftUI
import RustSampleFunctions

struct MainView: View {
    
    @State var left : UInt = 2;
    @State var right: UInt = 5;

    var body: some View {
        HStack {
            TextField("", value: $left, formatter: NumberFormatter()).textFieldStyle(.roundedBorder)
            Text("+")
            TextField("", value: $right, formatter: NumberFormatter()).textFieldStyle(.roundedBorder)
            Text("=")
            Text("\(add(right, left))")
        }
        .padding()
    }
}

#Preview {
    MainView()
}
