//
//  CloseMenuView.swift
//  Intro Section With Dropdown Navigation (iOS)
//
//  Created by Jinwook Kim on 2022/04/21.
//

import SwiftUI

struct CloseMenuView: View {
    @Binding var isMenuVisible: Bool
    var body: some View {
        HStack {
            Spacer()
            Button(role: .cancel) {
                withAnimation(.default) {
                    isMenuVisible = false
                }
            } label: {
                Image("CloseMenu")
                    .resizable()
                    .frame(width: 32, height: 32)
            }
        }
    }
}

struct CloseMenuView_Previews: PreviewProvider {
    static var previews: some View {
        CloseMenuView(isMenuVisible: .constant(true))
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
