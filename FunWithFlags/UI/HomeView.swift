//
//  HomeView.swift
//  FunWithFlags
//
//  Created by Carlos on 10/1/24.
//

import SwiftUI

struct HomeView: View {
    @State private var model: HomeViewModel = ServiceLocator.shared.provideHomeViewModel()
    var body: some View {
        VStack {
            Text("Fun With Flags!")
                .fontWeight(.black)
                .font(.title)
            FlagView(image: model.flagUrl)
            HStack {
                Text(model.name)
                    .fontWeight(.semibold)
                Text(model.population)
            }
            .padding(.top, 20.0)

            Button(action: { givemeAnotherFlag() }, label: {
                Text("Reload")
            })
            .padding(.top, 100.0)
            .buttonStyle(.borderedProminent)
            .task {
                try? await model.fetchFlag()
            }
        }
        .padding()
    }

    func givemeAnotherFlag() {
        Task {
            try? await model.fetchFlag()
        }
    }
}

#Preview {
    HomeView()
}
