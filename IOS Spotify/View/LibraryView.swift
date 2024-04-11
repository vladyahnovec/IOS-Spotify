//
//  LibraryView.swift
//  IOS Spotify
//
//  Created by Круглич Влад on 12.04.24.
//

import SwiftUI

struct LibraryView: View {
    @ObservedObject var model : Model
    var body: some View {
        VStack {
            VStack {
                Spacer()
                Text("Library")
                    .foregroundStyle(.white)
                Spacer()
                PlayerView()
                TabBarView(model: model)
            }
            .padding(.horizontal, 16)
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(Color.bgColor)
    }
}
