//
//  PriceFrame.swift
//  YourDoctor
//
//  Created by Maksim Zakharov on 02.12.2024.
//

import SwiftUI

struct PriceFrame: View {
    var details: String
    var price: String
    
    var body: some View {
        HStack {
            Text(details)
            Spacer()
            Text(price)
                .bold()
        }
        .font(.system(size: 16))
        .padding(.horizontal, 16)
        .frame(height: 56)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 8))
        .overlay {
            RoundedRectangle(cornerRadius: 8, style: .continuous).stroke( .yourDoctorGrey , lineWidth: 1)
        }
    }
}

#Preview {
    PriceFrame(details: "Стоимость услуг", price: "от 600Р")
}
