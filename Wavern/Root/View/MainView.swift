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
   @State var path: NavigationPath = NavigationPath()
   @State var selection = 0
   
   var body: some View {
      NavigationStack(path: $path) {
         TabView(selection: $selection) {
            VStack{
               DashboardView(path: $path)
            }
            .tabItem {
               Text(Phrases.exploreTitle)
               
               if selection == 0{
                  Image("home_active")
               }else{
                  Image("home")
               }
            }
            // TODO: Use enum to handle tag in tabItem
            .tag(0)
            
            VStack{
               InterviewView()
            }
            .tabItem {
               Text(Phrases.interviewTitle)
               if selection == 1{
                  Image("invite_active")
               }else{
                  Image("invite")
               }
            }
            .tag(1)
            
            VStack{
               ResultView()
            }
            .tabItem {
               Text(Phrases.resultTitle)
               if selection == 2{
                  Image("accepted_active")
               }else{
                  Image("accepted")
               }
            }
            .tag(2)
            
            VStack{
               ProfileView(path: $path)
            }
            .tabItem {
               Text(Phrases.profileTitle)
               if selection == 3{
                  Image("medal_active")
               }else{
                  Image("medal")
               }
            }
            .tag(3)
         }
         .tint(Colors.purple600)
         .navigationDestination(for: Destination.self) { destination in
            switch destination{
            case .allTalentsView:
               AllTalentsView(path: $path)
                  .navigationBarBackButtonHidden(true)
               
            case .talentDetailView:
               TalentProfileView(path: $path)
                  .navigationBarBackButtonHidden(true)
               
            case .rewardsView:
               RewardsView(path: $path)
                  .navigationBarBackButtonHidden(true)
               
            case .completedChallengeView:
               CompletedChallenge()
            }
         }
      }
      .navigationBarBackButtonHidden(true)
   }
}

#Preview {
   MainView()
}
