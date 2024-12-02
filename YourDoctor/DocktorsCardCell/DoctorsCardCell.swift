//
//  DoctorsCardCell.swift
//  YourDoctor
//
//  Created by Maksim Zakharov on 02.12.2024.
//

import SwiftUI

struct DoctorsCardCell: View {
    var secondName: String
    var fullName: String
    
    var body: some View {
        VStack {
            VStack {
                VStack(spacing: 15) {
                    HStack(alignment: .top, spacing: 16.0) {
                        Image("DoctorsPick")
                        VStack(alignment: .leading) {
                            Text(secondName)
                            Text(fullName)
                        }
                        .bold()
                        .font(.system(size: 24))
                        Image(systemName: "heart")
                            .foregroundColor(Color("yourDoctor_Silver"))
                    }
                    AppointmentButton(tittle: "Записаться", isAvailable: true, size: CGSize(width: 311, height: 47))
                }
                
                .frame(height: 188)
            }
            .padding([.leading, .bottom, .trailing], 16.0)
            .padding(.top, 20)
        }
        .cornerRadius(8)
    }
}

#Preview {
    DoctorsCardCell(secondName: "Осташков", fullName: "Кирилл Вячеславович")
}
