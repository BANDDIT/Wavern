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
   
   var body: some View {
      NavigationStack(path: $path) {
         TabView {
            VStack{
               DashboardView(path: $path)
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
               ProfileView(path: $path)
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
               AllTalentsView(path: $path)
                  .navigationBarBackButtonHidden(true)
                  .environment(ModelData())
               
            case .talentDetailView:
                TalentProfileView(path: $path, user: Talent(
                    User_Nama: "justin",
                    User_Email: "justinmail",
                    User_Password: "password",
                    User_Description: "desc",
                    Role: "role", Experience: 1,
                    Offering: 1000,
                    Willing_To_relocate: "yes",
                    Interview_Count: 1
                ), skill: TalentSkill(User_Nama: "justin", Skill1: "skill1", Skill2: "skill1", Skill3: "skill1", Skill4: "skill1", Skill5: "skill1", Skill6: "skill1"))
                .environment(ModelData())
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
