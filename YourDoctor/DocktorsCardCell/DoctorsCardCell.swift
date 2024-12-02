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
    var rating: Int
    var body: some View {
        VStack {
            VStack {
                VStack(spacing: 15) {
                    HStack(alignment: .top, spacing: 16.0) {
                        Image("DoctorsPick")
                        VStack(alignment: .leading, spacing: 8.0) {
                            VStack(alignment: .leading) {
                                Text(secondName)
                                Text(fullName)
                            }
                            .bold()
                            .font(.system(size: 24))
                            
                            DocktorsRating(rating: rating)
                            
                            Text("Педиатр" + "・" + "стаж 9 лет")
                                .font(.system(size: 14))
                                .foregroundColor(Color("yourDoctor_DarkGrey"))
                            
                            Text("от 400₽")
                                .bold()
                                .font(.system(size: 24))
                        }
                        
                        Image(systemName: "heart")
                            .resizable()
                            .foregroundColor(Color("yourDoctor_Silver"))
                            .frame(width: 20, height: 17.16)
                        
                    }
                    
                    AppointmentButton(tittle: "Записаться", isAvailable: true, size: CGSize(width: 311, height: 47))
                }

            }
            .frame(height: 224)
            .padding([.leading, .bottom, .trailing], 16.0)
            .padding(.top, 20)
        }
        .cornerRadius(8)
    }
}

#Preview {
    DoctorsCardCell(secondName: "Осташков", fullName: "Кирилл Вячеславович", rating: 3)
}
