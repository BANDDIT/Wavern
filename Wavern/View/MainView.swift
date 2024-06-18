//
//  MainView.swift
//  Wavern
//
//  Created by Paulus Michael on 18/06/24.
//

import SwiftUI

struct MainView: View {
   var body: some View {
      TabView {
         NavigationStack{
            DashboardView()
         }
         .tabItem {
            Text("Home")
            Image(systemName: "house.fill")
         }
         .tag(0)
         
         NavigationStack{
            ProfileView()
         }
         .tabItem {
            Text("Profile")
            Image(systemName: "person")
         }
         .tag(1)
      }
      .background(.white)
      .tint(.primaryPurple)
   }
}

#Preview {
   MainView()
}
