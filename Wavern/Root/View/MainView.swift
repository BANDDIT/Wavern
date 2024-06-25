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
    @State var progress: Double = 0.0 // State for progress tracking
    @StateObject var user = UserModel() // Instantiate the user model
    @State var isShow:Bool = false
    
    var body: some View {
        NavigationStack(path: $path) {
            TabView {
                VStack {
                    DashboardView(path: $path, progress: $progress) // Pass the progress state here
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
                      .environmentObject(user) // Pass the user model to ProfileView
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
                        .environmentObject(user) // Pass the user model
                    
                case .rewardsView:
                    RewardsView(path: $path)
                        .navigationBarBackButtonHidden(true)
                        .environmentObject(user) // Pass the user model
                    
                case .completedChallengeView:
                    //CompletedChallenge(path: $path)
                        //.environmentObject(user) // Pass the user model
                    CompletedChallenge(path: .constant(NavigationPath()),isShow:$isShow, title1:"Challenge",title2:"Completed",btnText:"Back to Home")
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
