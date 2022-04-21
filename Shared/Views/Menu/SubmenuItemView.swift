//
//  SubmenuItemView.swift
//  Intro Section With Dropdown Navigation (iOS)
//
//  Created by Jinwook Kim on 2022/04/21.
//

import SwiftUI

struct SubmenuItemView: View {
    let icon: String
    let text: String
    var body: some View {
        HStack(spacing: Constants.General.regularPadding) {
            Image(decorative: icon)
                .resizable()
                .frame(width: 24, height: 24)
            Text(text)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(Color("BodyColor"))
        }
        .padding()
    }
}

struct SubmenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        SubmenuItemView(icon: "Todo", text: "Todo List")
            .previewLayout(.sizeThatFits)
    }
}
