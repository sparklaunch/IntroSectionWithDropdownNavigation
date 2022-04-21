//
//  SubmenuItemView.swift
//  Intro Section With Dropdown Navigation (iOS)
//
//  Created by Jinwook Kim on 2022/04/21.
//

import SwiftUI

struct SubmenuItemView: View {
    let item: SubmenuItem
    var body: some View {
        HStack(spacing: Constants.General.regularPadding) {
            if let icon = item.icon {
                Image(decorative: icon)
                    .resizable()
                    .frame(width: 24, height: 24)
            }
            Text(item.text)
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(Color("BodyColor"))
        }
        .padding()
    }
}

struct SubmenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        SubmenuItemView(item: SubmenuItem(icon: "Todo", text: "Todo List"))
            .previewLayout(.sizeThatFits)
    }
}
