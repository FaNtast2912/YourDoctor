//
//  JSONDecoder+snakeCase.swift
//  YourDoctor
//
//  Created by Maksim Zakharov on 03.12.2024.
//
import Foundation

final class SnakeCaseJSONDecoder: JSONDecoder {
    override init() {
        super.init()
        keyDecodingStrategy = .convertFromSnakeCase
    }
}
