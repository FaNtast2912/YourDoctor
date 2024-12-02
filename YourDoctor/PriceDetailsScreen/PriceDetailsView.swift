//
//  PriceDetailsView.swift
//  YourDoctor
//
//  Created by Maksim Zakharov on 02.12.2024.
//

import SwiftUI

struct PriceDetailsView: View {
    var body: some View {
        HStack {
            VStack(spacing: 24.0) {
                PriceView(title: "Видео Консультация", details: "30 мин", price: "600")
                PriceView(title: "Видео Консультация", details: "30 мин", price: "600")
                PriceView(title: "Видео Консультация", details: "В клинике", price: "600")
                Spacer()
            }
            .padding(16)
            .navigationBarTitle("Cтоимость усулг", displayMode: .inline)
        }
        .background(.yourDoctorBackgroundGrey)
    }
}

#Preview {
    PriceDetailsView()
}
