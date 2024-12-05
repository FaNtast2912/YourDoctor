//
//  PriceDetailsView.swift
//  YourDoctor
//
//  Created by Maksim Zakharov on 02.12.2024.
//

import SwiftUI

struct PriceDetailsView: View {
    @Environment(\.dismiss) var presentationMode
    var doctor: Doctor
    var body: some View {
        ZStack {
            HStack {
                VStack(spacing: 24.0) {
                    PriceView(title: "Видео Консультация", details: "30 мин", price: "\(doctor.videoChatPrice)₽")
                    PriceView(title: "Чат с врачом", details: "30 мин", price: "\(doctor.textChatPrice)₽")
                    PriceView(title: "Прием в клинике", details: "В клинике", price: "\(doctor.hospitalPrice)₽")
                    Spacer()
                }
                .padding(16)
            }
            .background(.yourDoctorBackgroundGrey)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Cтоимость усулг")
                        .font(.title3)
                }
            }
            .navigationBarItems(leading: Button(action: {
                presentationMode.callAsFunction()
            }, label: {
                Image(systemName: "chevron.backward")
                    .tint(Color(.yourDoctorBlack))
            }))
        }
        .navigationBarBackButtonHidden(true)
        .padding(16)
        .background(.yourDoctorBackgroundGrey)
    }
}


#Preview {
    PriceDetailsView(doctor: Doctor.mockDoctor)
}
