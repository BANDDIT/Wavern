//
//  MainView.swift
//  Wavern
//
//  Created by Paulus Michael on 18/06/24.
//

import SwiftUI

struct MainView: View {
   init() {
      let tabBarAppearance = UITabBarAppearance()
      tabBarAppearance.configureWithOpaqueBackground()
      tabBarAppearance.backgroundColor = .white
      
      UITabBar.appearance().standardAppearance = tabBarAppearance
      UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
   }
   
   var body: some View {
      TabView {
         NavigationStack{
            DashboardView()
         }
         .tabItem {
            Text("Explore")
            Image(systemName: "safari")
         }
         .tag(0)
         
         NavigationStack{
            InviteView()
         }
         .tabItem {
            Text("Invites")
            Image(systemName: "rectangle.portrait.and.arrow.right")
         }
         .tag(1)
         
         NavigationStack{
            ResultView()
         }
         .tabItem {
            Text("Results")
            Image(systemName: "doc")
         }
         .tag(2)
         
         NavigationStack{
            ProfileView()
         }
         .tabItem {
            Text("Profile")
            Image(systemName: "person")
         }
         .tag(3)
      }
      .tint(.primaryPurple)
      .navigationBarBackButtonHidden(true)
   }
}

#Preview {
   MainView()
}
