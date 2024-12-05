//
//  DocktorsRating.swift
//  YourDoctor
//
//  Created by Maksim Zakharov on 02.12.2024.
//

import SwiftUI

struct DoctorsRating: View {
    var rating: Int
    var body: some View {
        HStack(spacing: 2.4) {
            Image(systemName: "star.fill")
                .resizable()
                .foregroundColor(rating >= 1 ? Color("yourDoctor_pink") : Color("yourDoctor_darkGrey"))
                .frame(width: 12,height: 12.0)
            Image(systemName: "star.fill")
                .resizable()
                .foregroundColor(rating >= 2 ? Color("yourDoctor_pink") : Color("yourDoctor_darkGrey"))
                .frame(width: 12,height: 12.0)
            Image(systemName: "star.fill")
                .resizable()
                .foregroundColor(rating >= 3 ? Color("yourDoctor_pink") : Color("yourDoctor_darkGrey"))
                .frame(width: 12,height: 12.0)
            Image(systemName: "star.fill")
                .resizable()
                .foregroundColor(rating >= 4 ? Color("yourDoctor_pink") : Color("yourDoctor_darkGrey"))
                .frame(width: 12,height: 12.0)
            Image(systemName: "star.fill")
                .resizable()
                .foregroundColor(rating >= 5 ? Color("yourDoctor_pink") : Color("yourDoctor_darkGrey"))
                .frame(width: 12,height: 12.0)
        }
        .frame(width: 69.6,height: 12.0)
    }
}

#Preview {
    DoctorsRating(rating: 2)
}
