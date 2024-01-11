//
//  FlagView.swift
//  FunWithFlags
//
//  Created by Carlos on 11/1/24.
//

import SwiftUI

struct FlagView: View {
    private let image: String
    init(image: String) {
        self.image = image
    }

    var body: some View {
        AsyncImage(url: URL(string: self.image))
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    FlagView(image: "https://flagcdn.com/w320/cx.png")
}
