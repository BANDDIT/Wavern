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
    @State var progress: Double = 0.0
    @StateObject var user = UserModel()
    @State var isShow: Bool = false

    var body: some View {
        NavigationStack(path: $path) {
            TabView {
                VStack {
                    DashboardView(path: $path, progress: $progress)
                }
                .tabItem {
                    Text(Phrases.exploreTitle)
                    Image(systemName: Phrases.exploreSymbol)
                }
                .tag(0)
                
                VStack {
                    InterviewView()
                }
                .tabItem {
                    Text(Phrases.interviewTitle)
                    Image(systemName: Phrases.interviewSymbol)
                }
                .tag(1)
                
                VStack {
                    ResultView()
                }
                .tabItem {
                    Text(Phrases.resultTitle)
                    Image(systemName: Phrases.resultSymbol)
                }
                .tag(2)
                
                VStack {
                    ProfileView(path: $path)
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
                switch destination {
                case .allTalentsView:
                    AllTalentsView(path: $path)
                        .navigationBarBackButtonHidden(true)
                        .environment(ModelData())
                    
                case .talentDetailView:
                    TalentProfileView(path: $path, progress: $progress)
                        .navigationBarBackButtonHidden(true)
                        .environmentObject(user)
                    
                case .rewardsView:
                    RewardsView(path: $path)
                        .navigationBarBackButtonHidden(true)
                        .environmentObject(user)
                    
                case .completedChallengeView:
                    CompletedChallenge(path: .constant(NavigationPath()), isShow: $isShow, title1: "Challenge", title2: "Completed", btnText: "Back to Home")
                        .environmentObject(user)

                case .interviewDateView:
                    InterviewDateView(path: $path, progress: $progress)
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
