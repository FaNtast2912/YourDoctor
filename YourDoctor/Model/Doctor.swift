//
//  Doctor.swift
//  YourDoctor
//
//  Created by Maksim Zakharov on 04.12.2024.
//

struct Doctor: Identifiable {
    static let mockDoctor: Doctor = Doctor(from: Responce.mockData)
    let id: String
    let firstName, patronymic, lastName, categoryLabel : String
    let scientificDegreeLabel: String
    let avatar: String?
    let educationTypeLabel: EducationTypeLabel?
    let seniority, hospitalPrice, textChatPrice, videoChatPrice, rank: Int
    let isFavorite: Bool
    var minimalPriceString: String {
        guard let minimalPrice = [hospitalPrice,textChatPrice,videoChatPrice].min() else {
            return "Цена по запросу"
        }
        return "от \(minimalPrice)₽"
    }
    var scientificDegreeString: String {
        switch scientificDegreeLabel {
        case "вторая":
            return "Врач второй категории"
        case "первая":
            return "Врач второй категории"
        case "высшая":
            return "Врач высшей категории"
        default:
            return "Нет информации о категории"
        }
    }
    var experienceString : String {
        switch seniority {
        case 0:
            return "Опыт работы: Нет информации об опыте"
        case 1:
            return "Опыт работы: \(seniority) год"
        case 2...4:
            return "Опыт работы: \(seniority) года"
        default:
            return "Опыт работы: \(seniority) лет"
        }
    }
    var yearOfExperienceString: String {
        switch seniority {
        case 0:
            return "нет информации о стаже"
        case 1:
            return "стаж \(seniority) год"
        case 2...4:
            return "стаж \(seniority) года"
        default:
            return "стаж \(seniority) лет"
        }
    }
    var fullNameString: String {
        firstName + lastName
    }
    var educationTypeString: String {
        guard let educationTypeLabel else { return "Нет информации об образовании"}
        return educationTypeLabel.name
    }
    
    init(id: String, firstName: String, patronymic: String, lastName: String, avatar: String?, categoryLabel: String, scientificDegreeLabel: String, educationTypeLabel: EducationTypeLabel?, seniority: Int, hospitalPrice: Int, textChatPrice: Int, videoChatPrice: Int, rank: Int, isFavorite: Bool) {
        self.firstName = firstName
        self.patronymic = patronymic
        self.lastName = lastName
        self.avatar = avatar
        self.categoryLabel = categoryLabel
        self.scientificDegreeLabel = scientificDegreeLabel
        self.educationTypeLabel = educationTypeLabel
        self.seniority = seniority
        self.hospitalPrice = hospitalPrice
        self.textChatPrice = textChatPrice
        self.videoChatPrice = videoChatPrice
        self.rank = rank
        self.isFavorite = isFavorite
        self.id = id
    }
    
    init(from user: User) {
        self.firstName = user.firstName
        self.patronymic = user.patronymic
        self.lastName = user.lastName
        self.avatar = user.avatar
        self.categoryLabel = user.categoryLabel
        self.scientificDegreeLabel = user.scientificDegreeLabel
        self.educationTypeLabel = user.educationTypeLabel
        self.seniority = user.seniority
        self.hospitalPrice = user.hospitalPrice
        self.textChatPrice = user.textChatPrice
        self.videoChatPrice = user.videoChatPrice
        self.rank = user.rank
        self.isFavorite = user.isFavorite
        self.id = user.id
    }
}
