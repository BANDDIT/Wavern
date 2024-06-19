//
//  MainView.swift
//  Wavern
//
//  Created by Paulus Michael on 18/06/24.
//

import SwiftUI

struct MainView: View {
   init() {
      // Customize the appearance of the tab bar
      let tabBarAppearance = UITabBarAppearance()
      tabBarAppearance.configureWithOpaqueBackground()
      tabBarAppearance.backgroundColor = .white // Change to your desired color
      UITabBar.appearance().standardAppearance = tabBarAppearance
      UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
   }
   
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
