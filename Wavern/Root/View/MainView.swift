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
   @State var user: Talent?
   @State var skill: TalentSkill?
   @State var link: TalentPortofolio?
   
   var body: some View {
      NavigationStack(path: $path) {
         TabView {
            VStack{
               DashboardView(path: $path, talent: $user, skill: $skill, link: $link)
                  .padding(.bottom, 2)
            }
            .tabItem {
               Text(Phrases.exploreTitle)
               Image(systemName: Phrases.exploreSymbol)
            }
            .tag(0)
            
            VStack{
               InterviewView()
                  .padding(.bottom, 2)
            }
            .tabItem {
               Text(Phrases.interviewTitle)
               Image(systemName: Phrases.interviewSymbol)
            }
            .tag(1)
            
            VStack{
               ResultView()
                  .padding(.bottom, 2)
            }
            .tabItem {
               Text(Phrases.resultTitle)
               Image(systemName: Phrases.resultSymbol)
            }
            .tag(2)
            
            VStack{
               ProfileView(path: $path)
                  .padding(.bottom, 2)
            }
            .tabItem {
               Text(Phrases.profileTitle)
               Image(systemName: Phrases.profileSymbol)
            }
            .tag(3)
         }
         .tint(Colors.purple600)
         .navigationDestination(for: Destination.self) { destination in
            switch destination{
            case .allTalentsView:
               AllTalentsView(path: $path, talent: $user, skill: $skill)
                  .navigationBarBackButtonHidden(true)
                  .environment(ModelData())
               
            case .talentDetailView:
               TalentProfileView(path: $path, talent: $user, skill: $skill, link: $link)
                  .environment(ModelData())
                  .navigationBarBackButtonHidden(true)
               
            case .rewardsView:
               RewardsView(path: $path)
                  .navigationBarBackButtonHidden(true)
               
            case .completedChallengeView:
               CompletedChallenge()
               
            case .interviewDateView:
               InterviewDateView()
                  .navigationBarBackButtonHidden(true)
            }
         }
      }
      .navigationBarBackButtonHidden(true)
   }
}

#Preview {
   MainView()
}
