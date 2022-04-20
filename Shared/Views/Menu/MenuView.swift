//
//  MenuView.swift
//  Intro Section With Dropdown Navigation (iOS)
//
//  Created by Jinwook Kim on 2022/04/20.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        ZStack {
            Color.white
            VStack {
                HStack {
                    Spacer()
                    Button(role: .cancel) {
                        // TODO: CLOSE MENU.
                    } label: {
                        Image("CloseMenu")
                            .resizable()
                            .frame(width: 32, height: 32)
                    }
                }
                VStack {
                    
                }
            }
        }
        .padding(Constants.General.semiwidePadding)
        .fixedSize(horizontal: false, vertical: true)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
            .previewLayout(.sizeThatFits)
    }
}
