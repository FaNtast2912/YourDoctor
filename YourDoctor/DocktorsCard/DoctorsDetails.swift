//
//  DoctorsCard.swift
//  YourDoctor
//
//  Created by Maksim Zakharov on 02.12.2024.
//

import SwiftUI

struct DoctorsDetails: View {
    var secondName: String
    var fullName: String
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 20.0) {
                HStack {
                    Image("DoctorsPick")
                    VStack(alignment: .leading) {
                        Text(secondName)
                        Text(fullName)
                    }
                    .bold()
                    .font(.system(size: 24))
                }
                .frame(height: 50)
                VStack(alignment: .leading) {
                    DocktorsDetailsSegment(imageName: "clock", details: "Опыт работы: 27 лет")
                    DocktorsDetailsSegment(imageName: "cross.case", details: "Врач высшей категории")
                    DocktorsDetailsSegment(imageName: "graduationcap", details: "1-й ММИ им. И.М.Сеченова")
                    DocktorsDetailsSegment(imageName: "mappin", details: "Детская клиника “РебёнОК”")
                }
                .font(.system(size: 14))
                VStack(spacing: 24.0) {
                    PriceFrame(details: "Стоимость услуг", price: "от 600")
                        .bold()
                        .font(.system(size: 24))
                    Text("Проводит диагностику и лечение терапевтических больных. Осуществляет расшифровку и снятие ЭКГ. Дает рекомендации по диетологии. Доктор имеет опыт работы в России и зарубежом. Проводит консультации пациентов на английском языке.")
                        .font(.system(size: 14))
                }
                .foregroundColor(Color("yourDoctor_black"))
            }
            Spacer()
            
            NavigationLink(destination: PriceDetailsView()) {
                AppointmentButton(tittle: "Записаться", isAvailable: true, size: CGSize(width: 343, height: 56))
                    
            }
            .padding(.bottom, 10)
        }
        .padding(16)
        .background(.yourDoctorBackgroundGrey)
    }
}

#Preview {
    DoctorsDetails(secondName: "Семенова", fullName: "Дарья Сергеевна")
}
