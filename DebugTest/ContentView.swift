//
//  ContentView.swift
//  DebugTest
//
//  Created by Patrick Dinger on 15.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button("sigh") {
                Task{
                    // 1...4 is close range
                    for numbers in 1...500 {
                        try await Task.sleep(nanoseconds: 500_000_000)
                      print(numbers)
                    }
                }
            }
        }
        .task {
            print("Hallo")
            try? await Task.sleep(nanoseconds: 2000)
            print("ficker")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
