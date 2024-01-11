//
//  FetchCountryInteractor.swift
//  FunWithFlags
//
//  Created by Carlos on 10/1/24.
//

import Foundation

class FetchRandomCountryInteractor: FetchRandomCountryUseCase {
    let countriesAPIDataSource: CountriesAPIDataSource

    init(countriesAPIDataSource: CountriesAPIDataSource) {
        self.countriesAPIDataSource = countriesAPIDataSource
    }

    func execute() async throws -> Country? {
        do {
            let countries = try await countriesAPIDataSource.fetchCountries()
            let country = selectRandomizeCountry(countries: countries)
            return country
        } catch {
            return nil
        }
    }

    private func selectRandomizeCountry(countries: [Country]) -> Country {
        let randomIndex = Int.random(in: 0 ..< countries.count)
        return countries[randomIndex]
    }
}
