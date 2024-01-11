//
//  ServiceLocator.swift
//  FunWithFlags
//
//  Created by Carlos on 10/1/24.
//

import Foundation

class ServiceLocator {
    static let shared = ServiceLocator()

    private init() {}

    func provideHomeViewModel() -> HomeViewModel {
        return HomeViewModel(fetchRandomCountryUseCase: provideFetchRandomCountryUseCase())
    }

    func provideFetchRandomCountryUseCase() -> FetchRandomCountryUseCase {
        return FetchRandomCountryInteractor(countriesAPIDataSource: provideCountriesAPIDataSource())
    }

    func provideCountriesAPIDataSource() -> CountriesAPIDataSource {
        return CountriesAPIDataSourceImp(fetchCountriesRequest: provideFetchCountriesRequest())
    }

    func provideFetchCountriesRequest() -> FetchCountriesRequest {
        return FetchCountriesRequest()
    }
}
