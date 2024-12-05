//
//  DoctorsListPicker.swift
//  YourDoctor
//
//  Created by Maksim Zakharov on 03.12.2024.
//

import SwiftUI

struct DoctorsListPicker: View {
    
    @State private var selectedFilter = Filter.cost
    
    enum Filter {
        case cost
        case experience
        case ranting
    }
    
    init(selectedFilter: Filter = Filter.cost) {
        self.selectedFilter = selectedFilter
        UISegmentedControl.appearance().selectedSegmentTintColor = .yourDoctorPink
        let attributes : [NSAttributedString.Key: Any] = [.foregroundColor : UIColor.white]
        let attributes2 : [NSAttributedString.Key: Any] = [.foregroundColor : UIColor.gray]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes(attributes2, for: .normal)
    }
    
    var body: some View {
        VStack {
            Picker(selection: $selectedFilter) {
                Text("По цене").tag(Filter.cost)
                Text("По стажу").tag(Filter.experience)
                Text("По рейтингу").tag(Filter.ranting)
            } label: {
                Text("Picker")
            }
            .font(.system(size: 14))
            .background(.yourDoctorWhite)
            .pickerStyle(.segmented)
        }
    }
}

#Preview {
    DoctorsListPicker()
}
