//
//  PlayerView.swift
//  IOS Spotify
//
//  Created by Круглич Влад on 10.04.24.
//

import SwiftUI

struct PlayerView: View {
    var body: some View {
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
    }
}

#Preview {
    PlayerView()
}
