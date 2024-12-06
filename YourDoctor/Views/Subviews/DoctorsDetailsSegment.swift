//
//  DocktorsDetailsSegment.swift
//  YourDoctor
//
//  Created by Maksim Zakharov on 02.12.2024.
//

import SwiftUI

struct DoctorsDetailsSegment: View {
    var imageName: String
    var details: String
    
    var body: some View {
        
        HStack {
            Image(systemName: imageName)
                .resizable()
                .frame(width: 14,height: 14)
                .aspectRatio(contentMode: .fit)
            Text(details)
                .font(.system(size: 14))
                
                
        }
        .foregroundColor(Color(.yourDoctorDarkGrey))
        .background(.yourDoctorBackgroundGrey)
    }
}

#Preview {
    DoctorsDetailsSegment(imageName: "clock", details: "Опыт работы")
}
