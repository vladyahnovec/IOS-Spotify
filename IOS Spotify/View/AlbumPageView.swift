//
//  AlbumPageView.swift
//  IOS Spotify
//
//  Created by Круглич Влад on 10.04.24.
//

import SwiftUI

struct AlbumPageView: View {
    var body: some View {
        VStack {
            VStack {
                Rectangle()
                    .fill(.gray)
                    .frame(width: 246, height: 246)
                    .padding(.top, 50)
                VStack(alignment: .leading) {
                    Text("Reasonable Doubt")
                        .foregroundStyle(.white)
                        .font(.custom("CircularStd-Black", size: 24))
                    HStack {
                        Circle()
                            .fill(.gray)
                            .frame(width: 20)
                        Text("JAY-Z")
                            .foregroundStyle(.white)
                            .font(.custom("CircularStd-Black", size: 13))
                    }
                    HStack {
                        Text("Album • 1996")
                            .font(.custom("CircularStd-Medium", size: 13))
                            .foregroundColor(.gray)
                    }
                    HStack {
                        HStack(spacing: 22) {
                            Image("heart")
                            Image("dowl")
                            Image("points")
                        }
                        Spacer()
                        HStack(spacing: 13) {
                            Image("shuffle")
                            Button(action: {}) {
                                ZStack(alignment: .center) {
                                    Circle()
                                        .fill(Color.greenColor)
                                        .frame(width: 48)
                                    Image(systemName: "arrowtriangle.right.fill")
                                        .foregroundColor(Color.bgColor)
                                        .font(.system(size: 20))
                                        .padding(.leading, 3)
                                }
                            }
                        }
                    }
                    ScrollView {
                        VStack(alignment: .leading) {
                            ForEach(Range(0...5)) { _ in
                                HStack() {
                                    VStack(alignment: .leading, spacing: 0) {
                                        Text("Can’t Knock The Hustle")
                                            .foregroundStyle(.white)
                                            .font(.custom("CircularStd-Medium", size: 16))
                                        HStack(spacing: 5) {
                                            Image("E")
                                            Text("JAY-Z, Mary J. Blige")
                                                .foregroundStyle(.gray)
                                                .font(.custom("CircularStd-Medium", size: 13))
                                        }
                                    }
                                    Spacer()
                                    Image("points")
                                }
                            }
                        }
                        .frame(height: 300)
                    }
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
            .padding(.horizontal, 16)
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(Color.bgColor)
    }
}

#Preview {
    AlbumPageView()
}
