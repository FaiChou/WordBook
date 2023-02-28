//
//  ContentView.swift
//  WordBook
//
//  Created by 周辉 on 2023/2/9.
//

import SwiftUI

struct Ocean: Identifiable {
    let name: String
    let id = UUID()
}

private var oceans = [
    Ocean(name: "Pacific"),
    Ocean(name: "Atlantic"),
    Ocean(name: "Indian"),
    Ocean(name: "Southern"),
    Ocean(name: "Arctic")
]

struct ContentView: View {
    @State private var multiSelection = Set<UUID>()
    var body: some View {
        NavigationView {
            Button("1") {}
            Button("1") {}
            Text("2")
            List(oceans, selection: $multiSelection) {
                Text($0.name)
            }
            .navigationTitle("Oceans")
#if os(iOS)
            .toolbar { EditButton() }
#endif
        }
//        Text("\(multiSelection.count) selections")
    }
}
