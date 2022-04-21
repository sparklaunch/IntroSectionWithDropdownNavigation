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
        ZStack(alignment: .trailing) {
            Color.black.opacity(0.5)
            ZStack(alignment: .top) {
                Color.white
                    .shadow(radius: Constants.General.shadowRadius)
                VStack(alignment: .leading, spacing: Constants.General.semiwidePadding) {
                    CloseMenuView(isMenuVisible: $isMenuVisible)
                    VStack(alignment: .leading, spacing: Constants.General.semiwidePadding) {
                        MenuItemView(text: "Features")
                        MenuItemView(text: "Company")
                        MenuItemView(text: "Careers")
                        MenuItemView(text: "About")
                    }
                }
                .padding(Constants.General.semiwidePadding)
                .padding(.top, Constants.General.widePadding)
            }
            .frame(width: 320)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView(isMenuVisible: .constant(true))
    }
}
