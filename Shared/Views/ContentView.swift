//
//  ContentView.swift
//  Shared
//
//  Created by Jinwook Kim on 2022/04/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.white
            VStack(spacing: .zero) {
                HeaderView()
                HeroView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
