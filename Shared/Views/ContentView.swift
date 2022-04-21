//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/04/20.
//

import SwiftUI

struct ContentView: View {
    @State private var isMenuVisible: Bool = false
    var body: some View {
        ZStack {
            ZStack {
                Color.white
                    .edgesIgnoringSafeArea(.all)
                ScrollView {
                    LazyVStack(spacing: .zero) {
                        HeaderView(isMenuVisible: $isMenuVisible)
                        HeroView()
                        BodyView()
                        FooterView()
                    }
                }
            }
            .blur(radius: isMenuVisible ? 3 : .zero)
            MenuView(isMenuVisible: $isMenuVisible)
                .opacity(isMenuVisible ? 1 : .zero)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
