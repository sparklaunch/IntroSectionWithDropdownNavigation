//
//  BodyView.swift
//  Intro Section With Dropdown Navigation (iOS)
//
//  Created by Jinwook Kim on 2022/04/20.
//

import SwiftUI

struct BodyView: View {
    var body: some View {
        VStack(spacing: 24) {
            Text("Make remote work")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color("TitleColor"))
            Text("Get your team in sync, no matter your location. Streamline processes, create team rituals, and watch productivity soar.")
                .font(.body)
                .fontWeight(.semibold)
                .foregroundColor(Color("BodyColor"))
                .multilineTextAlignment(.center)
                .lineSpacing(5)
            Button {

            } label: {
                Text("Learn more")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(EdgeInsets(top: 16, leading: 24, bottom: 16, trailing: 24))
                    .background(
                        RoundedRectangle(cornerRadius: 15, style: .continuous)
                            .fill(Color("TitleColor"))
                    )
            }
        }
        .padding(EdgeInsets(top: 36, leading: 16, bottom: 36, trailing: 16))
    }
}

struct BodyView_Previews: PreviewProvider {
    static var previews: some View {
        BodyView()
            .previewLayout(.sizeThatFits)
    }
}
