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
            // TODO: Move all constant to 1 file and 1 struct
            Text(Phrases.exploreTitle)
            Image(systemName: Phrases.exploreSymbol)
         }
         // TODO: Use enum to handle tag in tabItem
         .tag(0)
         
         NavigationStack{
            InterviewView()
         }
         .tabItem {
            Text(Phrases.interviewTitle)
            Image(systemName: Phrases.interviewSymbol)
         }
         .tag(1)
         
         NavigationStack{
            ResultView()
         }
         .tabItem {
            Text(Phrases.resultTitle)
            Image(systemName: Phrases.resultSymbol)
         }
         .tag(2)
         
         NavigationStack{
            ProfileView()
         }
         .tabItem {
            Text(Phrases.profileTitle)
            Image(systemName: Phrases.profileSymbol)
         }
         .tag(3)
      }
      .tint(Colors.purple600)
      .navigationBarBackButtonHidden(true)
   }
}

#Preview {
   MainView()
}
