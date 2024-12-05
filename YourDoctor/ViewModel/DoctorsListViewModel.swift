//
//  DoctorsListViewModel.swift
//  YourDoctor
//
//  Created by Maksim Zakharov on 03.12.2024.
//
import Foundation

final class DoctorsListViewModel: ObservableObject {
    // MARK: - Public Properties
    @Published var doctors: [Doctor] = []
    // MARK: - Private Properties
    private let urlSession = URLSession.shared
    private let urlString = "https://raw.githubusercontent.com/salfa-ru/test_iOS_akatosphere/main/test.json"
    private var dataTask: URLSessionTask?
    private enum DoctorsProfileServiceError: Error {
        case invalidRequest
    }
    // MARK: - Initializers
    init() {
        fetchDoctors()
    }
    // MARK: - Public Methods
    func fetchDoctors() {
        assert(Thread.isMainThread)
        
        guard let request = makeURLRequest() else {
            preconditionFailure("bad request")
        }
        guard dataTask == nil else { return }
        
        let task = urlSession.objectTask(for: request) { [weak self] (result: Result<Responce, Error>) in
            guard let self else { preconditionFailure("self is unavalible") }
            switch result {
            case .success(let response):
                response.data.users.forEach { response in
                    self.doctors.append(Doctor(from: response))
                }
                self.dataTask = nil
            case .failure(let error):
                print("ProfileService Error - \(error)")
            }
            self.dataTask = nil
        }
        self.dataTask = task
        task.resume()
    }
    
    // MARK: - Private Method
    private func makeURLRequest() -> URLRequest? {
        guard let url = URL(string: urlString) else {
            assertionFailure("Cant make URL")
            return nil
        }
        return URLRequest(url: url)
    }
}
