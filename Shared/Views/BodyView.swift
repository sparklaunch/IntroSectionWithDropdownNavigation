//
//  BodyView.swift
//  Intro Section With Dropdown Navigation (iOS)
//
//  Created by Jinwook Kim on 2022/04/20.
//

import SwiftUI

struct BodyView: View {
    var body: some View {
        VStack(spacing: Constants.General.semiwidePadding) {
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
                // TODO: LEARN MORE BUTTON.
            } label: {
                Text("Learn more")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(EdgeInsets(top: Constants.General.regularPadding, leading: Constants.General.semiwidePadding, bottom: Constants.General.regularPadding, trailing: Constants.General.semiwidePadding))
                    .background(
                        RoundedRectangle(cornerRadius: Constants.General.cornerRadius, style: .continuous)
                            .fill(Color("TitleColor"))
                    )
            }
        }
        .padding(EdgeInsets(top: Constants.General.widePadding, leading: Constants.General.regularPadding, bottom: Constants.General.widePadding, trailing: Constants.General.regularPadding))
        .fixedSize(horizontal: false, vertical: true)
    }
}

struct BodyView_Previews: PreviewProvider {
    static var previews: some View {
        BodyView()
            .previewLayout(.sizeThatFits)
    }
}
