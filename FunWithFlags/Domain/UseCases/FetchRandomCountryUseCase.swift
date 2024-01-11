//
//  File.swift
//  FunWithFlags
//
//  Created by Carlos on 10/1/24.
//

protocol FetchRandomCountryUseCase {
    func execute() async throws -> Country?
}
