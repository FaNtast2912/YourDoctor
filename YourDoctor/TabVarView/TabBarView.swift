//
//  TabBarView.swift
//  YourDoctor
//
//  Created by Maksim Zakharov on 03.12.2024.
//

import SwiftUI

struct TabBarView: View {
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(.white)
        }
    
    var body: some View {
        ZStack {
            Color(.yourDoctorBackgroundGrey).ignoresSafeArea()
            TabView {
                DoctorsListView().tabItem {
                    Label("Главная", systemImage: "house.fill")
                }
            
            Image(systemName: "calendar.badge.plus")
                .tabItem {
                    Label("Приемы", systemImage: "calendar")
                }
            
            Image(systemName: "message.badge.filled.fill")
                .tabItem {
                    Label("Чат", systemImage: "message.badge.fill")
                }
            
            Image(systemName: "person.fill")
                .tabItem {
                    Label("Профиль", systemImage: "person.fill")
                }
            }
            
        }
    }
}

#Preview {
    TabBarView()
}
