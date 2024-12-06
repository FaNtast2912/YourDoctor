//
//  appointmentButton.swift
//  YourDoctor
//
//  Created by Maksim Zakharov on 02.12.2024.
//
import SwiftUI

struct AppointmentButton: View {
    
    var tittle: String
    var isAvailable: Bool
    var size: CGSize
    
    var body: some View {
        HStack {
            Text(tittle)
                .foregroundColor(.white)
                .fontWeight(.bold)
                .frame(height: size.height)
                .frame(maxWidth: .infinity)
                .background(isAvailable ? .yourDoctorPink : .yourDoctorDarkGrey)
                .font(.system(size: 16))
        }
        .cornerRadius(8)
    }
}


#Preview {
    AppointmentButton(tittle: "Записаться", isAvailable: true, size: CGSize(width: 343, height: 56))
}
