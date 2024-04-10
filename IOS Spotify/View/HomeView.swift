//
//  HomeView.swift
//  IOS Spotify
//
//  Created by Круглич Влад on 10.04.24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            VStack {
                ScrollView {
                    VStack {
                        // MARK: Шапка
                        HStack {
                            Text("Good afternoon")
                                .font(.custom("CircularStd-Black", size: 24))
                                .foregroundStyle(Color.white)
                            Spacer()
                            HStack(spacing:25) {
                                Image("bell")
                                Image("time")
                                Image("settings")
                            }
                        }
                        .frame(height: 50)
                        // MARK: Последние треки
                        LazyVGrid(columns: columns, content: {
                            ForEach(Range(0...3)) { _ in
                                HStack(spacing: 0, content: {
                                    Rectangle()
                                        .fill(Color.grayColor)
                                        .frame(width: 56, height: 56)
                                    HStack {
                                        Text("It’s Only Me")
                                        Spacer()
                                    }
                                    .frame(width: 111)
                                    .padding(.leading, 8)
                                })
                            }
                        })
                        .foregroundStyle(Color.white)
                        .font(.custom("CircularStd-Black", size: 12))
                        .padding(.top, 6)
                        
                        // MARK: Новые релизы
                        HStack {
                            Text("New episodes")
                                .font(.custom("CircularStd-Black", size: 24))
                                .foregroundStyle(Color.white)
                            Spacer()
                        }
                        .padding(.top, 28)
                        ScrollView(.horizontal) {
                            LazyVGrid(columns: columnsEpisodes, alignment: .leading, content: {
                                ForEach(Range(0...7)) { _ in
                                    HStack(spacing:17, content: {
                                        Rectangle()
                                            .frame(width: 104, height: 104)
                                        VStack(spacing: 0) {
                                            Text("Things You Thought You Knew - What Is Exit Velocity? ")
                                                .frame(width: 188)
                                                .font(.custom("CircularStd-Black", size: 13))
                                            Text("What is exit velocity? On this episode, Neil deGrasse Tyson asks ")
                                                .font(.custom("CircularStd-Medium", size: 13))
                                                .frame(width: 188)
                                                .foregroundStyle(Color.gray)
                                                .lineLimit(2)
                                                .padding(.top, 5)
                                            Spacer()
                                            HStack {
                                                HStack {
                                                    Image("add")
                                                    Text("Fri • 53 min ")
                                                        .font(.custom("CircularStd-Medium", size: 11))
                                                        .foregroundStyle(Color.gray)
                                                }
                                                Spacer()
                                                Image("play")
                                            }
                                            Spacer()
                                        }
                                    })
                                    .padding(.leading, 6)
                                }
                            })
                            .foregroundStyle(Color.white)
                        }
                        
                        // MARK: Выбор альбома
                        HStack {
                            Text("Album picks")
                                .font(.custom("CircularStd-Black", size: 24))
                                .foregroundStyle(Color.white)
                            Spacer()
                        }
                        .padding(.top, 28)
                        ScrollView(.horizontal) {
                            LazyVGrid(columns: columnsAlbum, alignment: .leading, content: {
                                ForEach(Range(0...4)) {_ in
                                    VStack(alignment: .leading, content: {
                                        Rectangle()
                                            .fill(Color.grayColor)
                                            .frame(width: 104, height: 104)
                                        Text("Дунула")
                                            .foregroundStyle(Color.white)
                                            .font(.custom("CircularStd-Medium", size: 13))
                                        Text("вертуля газманова")
                                            .foregroundStyle(Color.gray)
                                            .font(.custom("CircularStd-Medium", size: 13))
                                    })
                                }
                            })
                        }
                        Spacer()
                    }
                    .padding(.horizontal, 16)
                    .padding(.top, 68)
                }
                
                // MARK: Проигрыватель
                HStack() {
                    HStack {
                        Rectangle()
                            .fill(.white)
                            .frame(width: 39, height: 39)
                            .cornerRadius(4)
                        VStack(alignment: .leading) {
                            Text("Introverted")
                                .foregroundStyle(.white)
                                .font(.custom("CircularStd-Medium", size: 14))
                            Text("Elzhi")
                                .foregroundStyle(.gray)
                                .font(.custom("CircularStd-Medium", size: 13))
                        }
                        Spacer()
                        Image("devices")
                            .padding(.trailing, 25)
                        Image("start")
                            .padding(.trailing, 8)
                    }
                    .padding(.horizontal, 10)
                }
                .frame(width: UIScreen.main.bounds.width - 30, height: 56)
                .background(Color.grayColor)
                .padding(.top, -8)
                
                // MARK: TabBar
                HStack {
                    HStack {
                        VStack {
                            Image("home")
                            Spacer()
                            Text("Home")
                                .foregroundStyle(.white)
                                .font(.custom("CircularStd-Medium", size: 11))
                        }
                        .frame(height: 42)
                        Spacer()
                        VStack {
                            Image("search")
                            Spacer()
                            Text("Search")
                                .foregroundStyle(.gray)
                                .font(.custom("CircularStd-Medium", size: 11))
                                .padding(.top, 3)
                        }
                        .frame(height: 42)
                        Spacer()

                        VStack {
                            Image(systemName: "folder")
                                .foregroundStyle(.gray)
                                .font(.system(size: 24))
                            Spacer()
                            Text("Your Library")
                                .foregroundStyle(.gray)
                                .font(.custom("CircularStd-Medium", size: 11))
                        }
                        .frame(height: 42)
                    }
                    .padding(.horizontal,53)
                    .padding(.bottom, 30)
                }
                .frame(width: UIScreen.main.bounds.width, height: 100)
            }
        }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(Color.bgColor)
    }
}


#Preview {
    HomeView()
}
