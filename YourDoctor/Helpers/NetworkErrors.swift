//
//  NetworkErrors.swift
//  YourDoctor
//
//  Created by Maksim Zakharov on 03.12.2024.
//

enum NetworkError: Error {
    case httpStatusCode(Int)
    case urlRequestError(Error)
    case urlSessionError
    case decodeError
}
