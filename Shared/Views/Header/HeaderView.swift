//
//  HeaderView.swift
//  Intro Section With Dropdown Navigation (iOS)
//
//  Created by Jinwook Kim on 2022/04/20.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Image("Logo")
                .resizable()
                .frame(width: 84, height: 27)
            Spacer()
            Button {
                // TODO: HAMBURGER MENU.
            } label: {
                Image("Menu")
                    .resizable()
                    .frame(width: 32, height: 18)
            }
        }
        .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.sizeThatFits)
    }
}
