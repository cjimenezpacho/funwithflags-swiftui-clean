//
//  HomeViewModel.swift
//  FunWithFlags
//
//  Created by Carlos on 10/1/24.
//

import Foundation

@Observable
class HomeViewModel {
    var flagUrl: String = ""
    var name: String = ""
    var population: String = ""
    var lat: Float = 0.0
    var lon: Float = 0.0

    let fetchRandomCountryUseCase: FetchRandomCountryUseCase

    init(fetchRandomCountryUseCase: FetchRandomCountryUseCase) {
        self.fetchRandomCountryUseCase = fetchRandomCountryUseCase
    }

    func fetchFlag() async throws {
        do {
            let country = try await fetchRandomCountryUseCase.execute()
            flagUrl = country!.flag
            name = country!.name
            population = formatPopulation(population: country!.population)
            lat = country!.lat
            lon = country!.lon
        } catch {}
    }

    private func formatPopulation(population: Int) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal

        let number = NSNumber(value: population)
        let formattedValue = formatter.string(from: number)!
        return "Population: " + formattedValue
    }
}
