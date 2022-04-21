//
//  MenuView.swift
//  Intro Section With Dropdown Navigation (iOS)
//
//  Created by Jinwook Kim on 2022/04/20.
//

import SwiftUI

struct MenuView: View {
    @Binding var isMenuVisible: Bool
    var body: some View {
        HStack {
            Spacer()
            ZStack(alignment: .top) {
                Color.white
                    .shadow(radius: Constants.General.shadowRadius)
                VStack(alignment: .leading, spacing: Constants.General.semiwidePadding) {
                    CloseMenuView(isMenuVisible: $isMenuVisible)
                    VStack(alignment: .leading, spacing: Constants.General.semiwidePadding) {
                        MenuItemView(text: "Features", submenuItems: [SubmenuItem(icon: "Todo", text: "Todo List"), SubmenuItem(icon: "Calendar", text: "Calendar"), SubmenuItem(icon: "Reminders", text: "Reminders"), SubmenuItem(icon: "Planning", text: "Planning")])
                        MenuItemView(text: "Company", submenuItems: [SubmenuItem(text: "History"), SubmenuItem(text: "Our Team"), SubmenuItem(text: "Blog")])
                        MenuItemView(text: "Careers", submenuItems: [])
                        MenuItemView(text: "About", submenuItems: [])
                    }
                }
                .padding(Constants.General.semiwidePadding)
                .padding(.top, Constants.General.widePadding)
            }
            .frame(width: 320)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(isMenuVisible: .constant(true))
    }
}
