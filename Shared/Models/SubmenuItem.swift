//
//  SubmenuItem.swift
//  Intro Section With Dropdown Navigation (iOS)
//
//  Created by Jinwook Kim on 2022/04/21.
//

import Foundation

struct SubmenuItem: Hashable {
    let icon: String?
    let text: String
    init(icon: String? = nil, text: String) {
        self.icon = icon
        self.text = text
    }
}
