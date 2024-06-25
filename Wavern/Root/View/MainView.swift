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
   @State var talent: Talent?
   @State var skill: TalentSkill?
   @State var link: TalentPortofolio?
   @State var isShow: Bool = false
   @State var progress: Double = 0.0
   @StateObject var user = UserModel()
   
   var body: some View {
      NavigationStack(path: $path) {
         TabView {
            VStack{
               DashboardView(path: $path, progress: $progress, talent: $talent, skill: $skill, link: $link)
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
                  .environmentObject(user)
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
               AllTalentsView(path: $path, talent: $talent, skill: $skill)
                  .navigationBarBackButtonHidden(true)
                  .environment(ModelData())
               
            case .talentDetailView:
               TalentProfileView(path: $path, talent: $talent, skill: $skill, link: $link)
                  .environment(ModelData())
                  .navigationBarBackButtonHidden(true)
               
            case .rewardsView:
               RewardsView(path: $path)
                  .navigationBarBackButtonHidden(true)
                  .environmentObject(user)
               
            case .completedChallengeView:
               CompletedChallenge(path: $path, isShow: $isShow, title1: "Challenge", title2: "Completed", btnText: "Done")
               
            case .interviewDateView:
               InterviewDateView(path: $path, progress: $progress)
                  .navigationBarBackButtonHidden(true)
                  .environmentObject(user)
            }
         }
      }
      .navigationBarBackButtonHidden(true)
   }
}

#Preview {
   MainView()
}
