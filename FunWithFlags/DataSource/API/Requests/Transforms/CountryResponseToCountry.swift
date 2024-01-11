//
//  CountryResponseToCountry.swift
//  FunWithFlags
//
//  Created by Carlos on 11/1/24.
//

import Foundation

class CountryResponseToCountry {
    func countryResponseToCountry(countryResponse: CountryResponse) -> Country {
        let country = Country(name: countryResponse.name.common,
                              capital: countryResponse.capital,
                              region: countryResponse.region,
                              subregion: countryResponse.region,
                              population: countryResponse.population,
                              flag: countryResponse.flags.png,
                              lat: countryResponse.latlng[0],
                              lon: countryResponse.latlng[1])

        return country
    }

    func countriesResponseToCountries(countriesResponse: [CountryResponse]) -> [Country] {
        var countries: [Country] = []
        for countryResponse: CountryResponse in countriesResponse {
            countries.append(countryResponseToCountry(countryResponse: countryResponse))
        }
        return countries
    }
}
