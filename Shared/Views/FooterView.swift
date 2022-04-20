//
//  FooterView.swift
//  Intro Section With Dropdown Navigation (iOS)
//
//  Created by Jinwook Kim on 2022/04/20.
//

import SwiftUI

struct FooterView: View {
    var body: some View {
        HStack {
            Image(decorative: "Databiz")
                .resizable()
                .frame(width: 114, height: 20)
            Spacer()
            Image(decorative: "Audiophile")
                .resizable()
                .frame(width: 73, height: 36)
            Spacer()
            Image(decorative: "Meet")
                .resizable()
                .frame(width: 90, height: 20)
            Spacer()
            Image(decorative: "Maker")
                .resizable()
                .frame(width: 83, height: 24)
        }
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView()
            .previewLayout(.sizeThatFits)
    }
}
