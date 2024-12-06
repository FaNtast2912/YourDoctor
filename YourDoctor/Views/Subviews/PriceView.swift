//
//  PriceView.swift
//  YourDoctor
//
//  Created by Maksim Zakharov on 02.12.2024.
//

import SwiftUI

struct PriceView: View {
    var title: String
    var details: String
    var price: String
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .bold()
                .font(.system(size: 16))
            PriceFrame(details: details, price: price)
        }
        .background(.yourDoctorBackgroundGrey)
    }
}



#Preview {
    PriceView(title: "Видеоконсультация", details: "30 мин", price: "600")
}
