//
//  MusicView.swift
//  IOS Spotify
//
//  Created by Круглич Влад on 12.04.24.
//

import SwiftUI

struct MusicView: View {
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Image("scrollDown")
                    Spacer()
                    Text("Reasonable Doubt")
                        .foregroundStyle(.white)
                        .font(.custom("CircularStd-Bold", size: 14))
                    Spacer()
                    Image("points")
                }
                .padding(.top, 30)
                Rectangle()
                    .fill(.gray)
                    .frame(width: 343, height: 343)
                    .padding(.top, 32)
                HStack {
                    VStack(alignment: .leading) {
                        Text("D’evils")
                            .foregroundStyle(.white)
                            .font(.custom("CircularStd-Bold", size: 26))
                        Text("JAY-Z")
                            .foregroundStyle(.gray)
                            .font(.custom("CircularStd-Medium", size: 17))
                    }
                    .padding(.top, 25)
                    .padding(.bottom, 10)
                    Spacer()
                }
                ZStack {
                    Rectangle()
                        .fill(Color.grayColor)
                        .frame(width: 341, height: 4)
                    HStack(spacing: 0) {
                        Rectangle()
                            .fill(Color.gray)
                            .frame(width: 50, height: 4)
                        Circle()
                            .fill(Color.gray)
                            .frame(width: 15)
                        Spacer()
                    }
                }
                HStack {
                    Text("0:08")
                    Spacer()
                    Text("-3:23")
                }
                .font(.custom("CircularStd-Bold", size: 11))
                .foregroundStyle(.gray)
                HStack() {
                    Image(systemName: "shuffle")
                    Spacer()
                    HStack(spacing: 20) {
                        Image(systemName: "backward.end.fill")
                        ZStack {
                            Circle()
                                .fill(.white)
                                .frame(width: 68)
                            Image(systemName: "pause.fill")
                                .foregroundStyle(Color.bgColor)
                                .font(.system(size: 35))
                        }
                        Image(systemName: "forward.end.fill")
                    }
                        .foregroundStyle(.white)
                    Spacer()
                    Image(systemName: "repeat")
                }
                .foregroundStyle(.white)
                .font(.system(size: 30))
                HStack {
                    Image("devices")
                    Spacer()
                    Image("share")
                }
                .padding(.top, 28)
                ZStack {
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 360, height: 50)
                        .cornerRadius(10)
                    HStack {
                        Text("Lyrics")
                            .font(.custom("CircularStd-Bold", size: 17))
                            .foregroundColor(.white)
                            .padding(.leading, 17)
                        Spacer()
                    }
                }
                .padding(.top, 20)
            }
            .padding(.horizontal, 26)
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        .background(Color.bgColor)
    }
}

#Preview {
    MusicView()
}
