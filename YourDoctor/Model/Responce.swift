//
//  DoctorsResponseResult.swift
//  YourDoctor
//
//  Created by Maksim Zakharov on 03.12.2024.
//
import Foundation

struct Responce: Codable {
    let data: DataResponse
}

struct DataResponse: Codable {
    let users: [User]
}

struct User: Codable {
    let id, firstName, patronymic, lastName, scientificDegreeLabel, categoryLabel : String
    let avatar : String?
    let educationTypeLabel: EducationTypeLabel?
    let seniority, hospitalPrice, textChatPrice, videoChatPrice, rank: Int
    let isFavorite: Bool
}

struct EducationTypeLabel: Codable {
    let id: Int
    let name: String
}

extension Responce {
    static let mockData = User(
        id: "", firstName: "Максим",
        patronymic: "Геннадьевич",
        lastName: "Захаров",
        scientificDegreeLabel: "высшая",
        categoryLabel: "нет", avatar: "https://media.istockphoto.com/id/1372002650/photo/cropped-portrait-of-an-attractive-young-female-doctor-standing-with-her-arms-folded-in-the.jpg?s=1024x1024&w=is&k=20&c=HwRi4NnrK9aKEC27BkXnJJfuggGABNmqnnmXL7D9aBs=",
        educationTypeLabel: nil,
        seniority: 0,
        hospitalPrice: 10,
        textChatPrice: 20,
        videoChatPrice: 30,
        rank: 3, isFavorite: true
    )
}


