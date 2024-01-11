//
//  FetchCountriesRequest.swift
//  FunWithFlags
//
//  Created by Carlos Personal on 9/1/24.
//

import Foundation

class FetchCountriesRequest {
    func getCountries() async throws -> [Country] {
        let url = URL(string: "https://restcountries.com/v3.1/all")
        let request = URLRequest(url: url!)

        let (data, _) = try await URLSession.shared.data(for: request)
        do {
            let countriesResponse = try JSONDecoder().decode([CountryResponse].self, from: data)
            return transformCountriesResponseToCountries(countriesResponse: countriesResponse)

        } catch {
            throw error
        }
    }

    private func transformCountriesResponseToCountries(countriesResponse: [CountryResponse]) -> [Country] {
        let countryResponseToCountry = CountryResponseToCountry()
        return countryResponseToCountry.countriesResponseToCountries(countriesResponse: countriesResponse)
    }
}
