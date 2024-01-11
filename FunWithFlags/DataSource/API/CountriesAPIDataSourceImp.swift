//
//  CountriesAPIDataSourceImp.swift
//  FunWithFlags
//
//  Created by Carlos Personal on 9/1/24.
//

import Foundation

class CountriesAPIDataSourceImp: CountriesAPIDataSource {
    let fetchCountriesRequest: FetchCountriesRequest

    init(fetchCountriesRequest: FetchCountriesRequest) {
        self.fetchCountriesRequest = fetchCountriesRequest
    }

    func fetchCountries() async throws -> [Country] {
        do {
            return try await fetchCountriesRequest.getCountries()
        } catch {
            return []
        }
    }
}
