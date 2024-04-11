//
//  TabBarView.swift
//  IOS Spotify
//
//  Created by Круглич Влад on 11.04.24.
//

import SwiftUI

struct TabBarView: View {
    @ObservedObject var model : Model
    var body: some View {
        // MARK: TabBar
        HStack {
            HStack {
                VStack {
                    Image(systemName: "house.fill")
                        .font(.system(size: 24))
                        .foregroundColor(model.page == "home" ? .white : .gray)
                    Spacer()
                    Text("Home")
                        .foregroundColor(model.page == "home" ? .white : .gray)
                        .font(.custom("CircularStd-Medium", size: 11))
                }
                .onTapGesture {
                    model.page = "home"
                    print(model.page)
                }
                .frame(height: 42)
                Spacer()
                VStack {
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 24))
                        .foregroundColor(model.page == "search" ? .white : .gray)
                    Spacer()
                    Text("Search")
                        .foregroundColor(model.page == "search" ? .white : .gray)
                        .font(.custom("CircularStd-Medium", size: 11))
                        .padding(.top, 3)
                }
                .onTapGesture {
                    model.page = "search"
                    print(model.page)
                }
                .frame(height: 42)
                Spacer()

                VStack {
                    Image(systemName: "folder")
                        .foregroundColor(model.page == "library" ? .white : .gray)
                        .font(.system(size: 24))
                    Spacer()
                    Text("Your Library")
                        .foregroundColor(model.page == "library" ? .white : .gray)
                        .font(.custom("CircularStd-Medium", size: 11))
                }
                .onTapGesture {
                    model.page = "library"
                    print(model.page)
                }
                .frame(height: 42)
            }
            .padding(.horizontal,53)
            .padding(.bottom, 30)
        }
        .frame(width: UIScreen.main.bounds.width, height: 100)
    }
}
