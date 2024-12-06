//
//  DoctorsCard.swift
//  YourDoctor
//
//  Created by Maksim Zakharov on 02.12.2024.
//

import SwiftUI

struct DoctorsDetailsView: View {
    @Environment(\.dismiss) var presentationMode
    let doctor: Doctor
    
    var body: some View {
        ZStack {
            VStack {
                VStack(alignment: .leading, spacing: 20.0) {
                    HStack {
                        Image("DoctorsPick")
                        VStack(alignment: .leading) {
                            Text(doctor.firstName)
                            Text(doctor.fullNameString)
                        }
                        .bold()
                        .font(.system(size: 24))
                    }
                    .frame(height: 50)
                    VStack(alignment: .leading) {
                        DoctorsDetailsSegment(imageName: "clock", details: doctor.experienceString)
                        DoctorsDetailsSegment(imageName: "cross.case", details: doctor.scientificDegreeString)
                        DoctorsDetailsSegment(imageName: "graduationcap", details: doctor.educationTypeString)
                        DoctorsDetailsSegment(imageName: "mappin", details: "Детская клиника “РебёнОК”")
                    }
                    .font(.system(size: 14))
                    VStack(spacing: 24.0) {
                        PriceFrame(details: "Стоимость услуг", price: doctor.minimalPriceString)
                            .bold()
                            .font(.system(size: 24))
                        Text("Проводит диагностику и лечение терапевтических больных. Осуществляет расшифровку и снятие ЭКГ. Дает рекомендации по диетологии. Доктор имеет опыт работы в России и зарубежом. Проводит консультации пациентов на английском языке.")
                            .font(.system(size: 14))
                    }
                    .foregroundColor(Color(.yourDoctorBlack))
                }
                Spacer()
                
                NavigationLink(destination: PriceDetailsView(doctor: doctor)) {
                    AppointmentButton(tittle: "Записаться", isAvailable: true, size: CGSize(width: 343, height: 56))
                    
                }
                .padding(.bottom, 10)
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Педиатр")
                        .font(.title3)
                }
            }
            .navigationBarItems(leading: Button(action: {
                presentationMode.callAsFunction()
            }, label: {
                Image(systemName: "chevron.backward")
                    .tint(Color(.yourDoctorDarkGrey))
            }))
        }
        .navigationBarBackButtonHidden(true)
        .padding(16)
        .background(.yourDoctorBackgroundGrey)
    }
}

#Preview {
    DoctorsDetailsView(doctor: Doctor.mockDoctor)
}
