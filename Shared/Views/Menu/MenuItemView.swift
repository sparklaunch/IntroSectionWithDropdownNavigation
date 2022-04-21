//
//  MenuItemView.swift
//  Intro Section With Dropdown Navigation (iOS)
//
//  Created by Jinwook Kim on 2022/04/21.
//

import SwiftUI

struct MenuItemView: View {
    @State private var isExpanded: Bool = false
    let text: String
    let submenuItems: [SubmenuItem]
    var body: some View {
        VStack {
            HStack {
                Button {
                    withAnimation(.spring(response: 0.3, dampingFraction: 0.6, blendDuration: .zero)) {
                        isExpanded.toggle()
                    }
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
            VStack {
                ForEach(submenuItems, id: \.self) { submenuItem in
                    SubmenuItemView(item: submenuItem)
                }
            }
        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView(text: "Features", submenuItems: [])
            .previewLayout(.sizeThatFits)
    }
}
