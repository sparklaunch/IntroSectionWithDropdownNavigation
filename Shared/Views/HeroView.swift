//
//  HeroView.swift
//  Intro Section With Dropdown Navigation (iOS)
//
//  Created by Jinwook Kim on 2022/04/20.
//

import SwiftUI

struct HeroView: View {
    var body: some View {
        Image(decorative: "Hero")
            .resizable()
            .scaledToFill()
            .fixedSize(horizontal: false, vertical: true)
    }
}

struct HeroView_Previews: PreviewProvider {
    static var previews: some View {
        HeroView()
            .previewLayout(.sizeThatFits)
    }
}
