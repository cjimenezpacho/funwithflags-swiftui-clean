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
            MapView(lat: model.lat, lon: model.lon)
                .frame(height: 300)
            VStack {
                Text("Fun With Flags!")
                    .fontWeight(.black)
                    .font(.title)
                    .offset(y: -130)
                    .padding(.bottom, -130)

                FlagView(image: model.flagUrl)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                HStack {
                    Text(model.name)
                        .fontWeight(.semibold)
                    Text(model.population)
                }

                Button(action: { givemeAnotherFlag() }, label: {
                    Text("Reload")
                })
                .buttonStyle(.borderedProminent)
                .task {
                    try? await model.fetchFlag()
                }
            }
            .padding()
        }
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
