//
//  MainView.swift
//  Wavern
//
//  Created by Paulus Michael on 18/06/24.
//

import SwiftUI

struct Phrases {
   static let exploreTitle = "Explore"
}

struct MainColor {
   static let primaryPurple: Color = .primaryPurple
}

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
            // TODO: Move all constant to 1 file and 1 struct
            Text(Phrases.exploreTitle)
            Image(systemName: "safari")
         }
         // TODO: Use enum to handle tag in tabItem
         .tag(0)
         
         NavigationStack{
            InterviewView()
         }
         .tabItem {
            Text("Interview")
            Image(systemName: "arrowtriangle.forward")
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
      .tint(MainColor.primaryPurple)
      .navigationBarBackButtonHidden(true)
   }
}

#Preview {
   MainView()
}
