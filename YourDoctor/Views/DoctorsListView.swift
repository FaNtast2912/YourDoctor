//
//  DocktorsList.swift
//  YourDoctor
//
//  Created by Maksim Zakharov on 03.12.2024.
//

import SwiftUI

struct DoctorsListView: View {
    @Environment(\.dismiss) var presentationMode
    @StateObject var viewModel = DoctorsListViewModel()
    @State private var searchBar = ""
    
    var searchedDoctor: [Doctor] {
        if searchBar.isEmpty { return viewModel.doctors }
        return viewModel.doctors.filter {
            $0.lastName.localizedCaseInsensitiveContains(searchBar) ||
            $0.firstName.localizedCaseInsensitiveContains(searchBar)
        }
    }
    
    var body: some View {
        ZStack {
            Color(.yourDoctorBackgroundGrey).ignoresSafeArea()
            
            NavigationStack {
                VStack {
                    Spacer(minLength: 1)
                    DoctorsListPicker()
                        .padding(.bottom, 8)
                    ScrollView {
                        VStack(spacing: 16.0) {
                            ForEach(searchedDoctor) { doctor in
                                DoctorsListCellView(doctor: doctor)
                            }
                        }
                    }
                }
                .padding(.horizontal, 16)
                .background(.yourDoctorBackgroundGrey)
            }
            .background(.yourDoctorBackgroundGrey)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Педиатры")
                        .font(.title3)
                }
            }
            .navigationBarItems(leading: Button(action: {
                presentationMode.callAsFunction()
            }, label: {
                Image(systemName: "chevron.backward")
                    .tint(Color(.yourDoctorDarkGrey))
            }))
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarTitle("Педиатры", displayMode: .inline)
        .toolbarTitleDisplayMode(.inline)
        .searchable(text: $searchBar, prompt: "Поиск")
        .scrollIndicators(.hidden)
    }
}


#Preview {
    DoctorsListView()
}

