//
//  CountryResponse.swift
//  FunWithFlags
//
//  Created by Carlos on 11/1/24.
//

import Foundation

struct CountryResponse: Codable {
    let name: Name
    let capital: [String]?
    let region: String
    let subregion: String?
    let population: Int
    let flags: Flags
    let latlng: [Float]
}

struct Name: Codable {
    let official: String
    let common: String
}

struct NativeName: Codable {
    let official: String
    let common: String
}

struct Flags: Codable {
    let png: String
    let svg: String
}
