//
//  Country.swift
//  FunWithFlags
//
//  Created by Carlos Personal on 4/1/24.
//

import Foundation

class Country {
    static func == (lhs: Country, rhs: Country) -> Bool {
        return lhs.name == rhs.name
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(name)
    }

    var name: String
    var capital: [String]?
    var region: String
    var subregion: String
    var population: Int
    var flag: String
    var lat: Float
    var lon: Float

    init(name: String, capital: [String]?, region: String, subregion: String, population: Int, flag: String, lat: Float, lon: Float) {
        self.name = name
        self.capital = capital
        self.region = region
        self.subregion = subregion
        self.population = population
        self.flag = flag
        self.lat = lat
        self.lon = lon
    }
}
