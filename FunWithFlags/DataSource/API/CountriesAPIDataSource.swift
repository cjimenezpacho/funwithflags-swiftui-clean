//
//  CountriesAPIDataSource.swift
//  FunWithFlags
//
//  Created by Carlos Personal on 9/1/24.
//

import Foundation

protocol CountriesAPIDataSource {
    func fetchCountries() async throws -> [Country]
}
