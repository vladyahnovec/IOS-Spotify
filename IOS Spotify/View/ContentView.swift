//
//  ContentView.swift
//  IOS Spotify
//
//  Created by Круглич Влад on 10.04.24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = Model()
    var body: some View {
        VStack {
            HomeView(model: model)
        }
    }
}

#Preview {
    ContentView()
}
