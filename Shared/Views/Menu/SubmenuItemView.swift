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
        Button {
            // TODO: SUBMENU ITEM LINK.
        } label: {
            HStack(spacing: Constants.General.regularPadding) {
                if let icon = item.icon {
                    Image(decorative: icon)
                        .resizable()
                        .frame(width: 24, height: 24)
                }
                Text(item.text)
                    .font(.body)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("BodyColor"))
            }
            .padding(Constants.General.narrowPadding)
        }
    }
}

struct SubmenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        SubmenuItemView(item: SubmenuItem(icon: "Todo", text: "Todo List"))
            .previewLayout(.sizeThatFits)
    }
}
