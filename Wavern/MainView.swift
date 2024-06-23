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
      tabBarAppearance.backgroundColor = .white

      UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
   }
   
   let notificationDelegate = NotificationDelegate()
   
   var body: some View {
      NavigationStack {
         TabView {
            VStack{
               DashboardView()
            }
            .tabItem {
               Text(Phrases.exploreTitle)
               Image(systemName: Phrases.exploreSymbol)
            }
            // TODO: Use enum to handle tag in tabItem
            .tag(0)
            
            VStack{
               InterviewView()
            }
            .tabItem {
               Text(Phrases.interviewTitle)
               Image(systemName: Phrases.interviewSymbol)
            }
            .tag(1)
            
            VStack{
               ResultView()
            }
            .tabItem {
               Text(Phrases.resultTitle)
               Image(systemName: Phrases.resultSymbol)
            }
            .tag(2)
            
            VStack{
               ProfileView()
            }
            .tabItem {
               Text(Phrases.profileTitle)
               Image(systemName: Phrases.profileSymbol)
            }
            .tag(3)
         }
         .tint(Colors.purple600)
      }
      .navigationBarBackButtonHidden(true)
   }
}

#Preview {
   MainView()
}
