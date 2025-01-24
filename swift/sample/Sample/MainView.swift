//
//  MainView.swift
//

import SwiftUI
<<<<<<< HEAD

struct MainView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
=======
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
>>>>>>> 8c4aba076fca9929bf29b6bdc1dd63b4059bfafc
        }
        .padding()
    }
}

#Preview {
    MainView()
}
