//
//  DoctorsCardCell.swift
//  YourDoctor
//
//  Created by Maksim Zakharov on 02.12.2024.
//

import SwiftUI

struct DoctorsListCellView: View {
    
    @State var doctor: Doctor
    @State var isFavorite = false
    
    var body: some View {
        VStack(spacing: 8) {
            HStack(alignment: .top) {
                
                AsyncImage(url: URL(string: doctor.avatar ?? "")) { p in
                    switch p {
                    case .empty:
                        Image("DoctorsPick")
                    case .success(let image):
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .cornerRadius(25)
                    default:
                        Image("DoctorsPick")
                    }
                }
                
                VStack(alignment: .leading, spacing: 8.0) {
                    Text("\(doctor.lastName)\n\(doctor.firstName) \(doctor.patronymic)")
                        .bold()
                        .font(.system(size: 16))
                    
                    DoctorsRating(rating: doctor.rank)
                    
                    Text("Педиатр" + "・" + doctor.yearOfExperienceString)
                        .font(.system(size: 14))
                        .foregroundColor(Color("yourDoctor_darkGrey"))
                    
                    Text(doctor.minimalPriceString)
                        .bold()
                        .font(.system(size: 24))
                }
                
                Spacer()
                
                Button {
                    isFavorite.toggle()
                } label: {
                    Image(systemName: isFavorite ? "heart.fill" : "heart")
                        .resizable()
                        .symbolRenderingMode(.palette)
                        .frame(width: 24, height: 20)
                        .foregroundColor(isFavorite ? Color("yourDoctor_pink") : Color("yourDoctor_silver"))
                }
                
            }
            .padding(.horizontal, 32)
            
            
            NavigationLink(destination: DoctorsDetails(doctor: doctor).toolbarRole(.editor)) {
                AppointmentButton(tittle: "Записаться", isAvailable: true, size: CGSize(width: 311, height: 47))
            }
            .padding(.horizontal, 16)
            
            
                
            
        }
        .frame(maxWidth: .infinity)
        .frame(height: 225)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .overlay {
            RoundedRectangle(cornerRadius: 20).stroke( .yourDoctorGrey , lineWidth: 1)
        }
    }
}

#Preview {
    DoctorsListCellView(doctor: Doctor.mockDoctor)
}
