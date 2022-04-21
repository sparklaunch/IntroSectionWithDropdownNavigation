//
//  MenuItemView.swift
//  Intro Section With Dropdown Navigation (iOS)
//
//  Created by Jinwook Kim on 2022/04/21.
//

import SwiftUI

struct MenuItemView: View {
    let text: String
    var body: some View {
        HStack {
            Button {

            } label: {
                HStack(spacing: Constants.General.regularPadding) {
                    Text(text)
                        .font(.title3)
                        .fontWeight(.semibold)
                    .foregroundColor(Color("BodyColor"))
                    Image(decorative: "DownArrow")
                        .resizable()
                        .frame(width: 10, height: 6)
                }
            }
        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView(text: "Features")
            .previewLayout(.sizeThatFits)
    }
}
