//
//  SearchView.swift
//  IOS Spotify
//
//  Created by Круглич Влад on 10.04.24.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var model : Model
    @State var text : String
    var body: some View {
        VStack {
            VStack {
                // MARK: Поиск
                HStack {
                    ZStack {
                        ZStack {
                            Rectangle()
                                .fill(Color.searchColor)
                                .frame(width: 285, height: 30)
                                .cornerRadius(5)
                                .padding(.leading, -30)
                            HStack {
                                HStack {
                                    Image(systemName: "magnifyingglass")
                                        .foregroundColor(Color.gray)
                                    if text == "" {
                                        Text("What do you want to listen to?")
                                            .foregroundStyle(.gray)
                                            .font(.custom("CircularStd-Medium", size: 16))
                                    }
                                }
                                .padding(.leading, 0)
                                Spacer()
                            }
                        }
                        TextField(text: $text) {}
                            .padding(.leading, 25)
                            .foregroundColor(Color.gray)
                    }
                    .font(.custom("CircularStd-Medium", size: 16))
                    Spacer()
                    Text("Cancel")
                        .foregroundStyle(.white)
                        .font(.custom("CircularStd-Medium", size: 15))
                }
                HStack {
                    Text("Recent searches")
                        .font(.custom("CircularStd-Black", size: 16))
                        .foregroundStyle(.white)
                        .padding(.top, 20)
                    Spacer()
                }
                ScrollView {
                    VStack(spacing: 16) {
                        ForEach(Range(0...10)) { _ in
                            HStack() {
                                Circle()
                                    .fill(.gray)
                                    .frame(width: 48)
                                VStack(alignment: .leading) {
                                    Text("Elzhi")
                                        .foregroundStyle(.white)
                                        .font(.custom("CircularStd-Medium", size: 16))
                                    Text("Artist")
                                        .foregroundStyle(.gray)
                                        .font(.custom("CircularStd-Medium", size: 12))
                                }
                                Spacer()
                                Image("cancel")
                            }
                            .frame(height: 48)
                        }
                    }
                }
                TabBarView(model: model)
            }
            .padding(.horizontal, 16)
            .padding(.top, 60)
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(Color.bgColor)
    }
}
