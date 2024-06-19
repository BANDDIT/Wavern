//
//  DashboardView.swift
//  Wavern
//
//  Created by Paulus Michael on 18/06/24.
//

import SwiftUI

struct DashboardView: View {
   @State var search: String = ""
   var body: some View {
      VStack(spacing: 0){
         // MARK: Top Section (Details)
         ZStack(alignment: .top){
            Image("dashboard_bg")
               .scaledToFit()
            
            VStack {
               HStack{
                  Text("Wavern")
                     .fontWeight(.semibold)
                     .font(.title)
                     .foregroundStyle(.neutral)
                  
                  Spacer()
                  
                  Image(systemName: "bell")
                     .resizable()
                     .frame(width: 24, height: 24)
                     .foregroundStyle(.neutral)
                     .padding(.horizontal)
                  
                  Image(systemName: "bookmark")
                     .resizable()
                     .frame(width: 20, height: 24)
                     .foregroundStyle(.neutral)
               }
               .padding()
               
               VStack {
                  HStack {
                     Image(systemName: "magnifyingglass")
                        .opacity(0.3)
                     
                     TextField(text: $search) {
                        Text("Enter Role, Skills, YOE, or Budget")
                     }
                  }
                  .padding()
                  .background(.white)
                  .clipShape(RoundedRectangle(cornerRadius: 12))
               }
               .padding(.horizontal)
            }
            .padding(.top, 60)
         }
         
         // MARK: Challenge Box & Talents List
         ScrollView {
            VStack(alignment: .leading) {
               Text("Your Challenge")
                  .font(.title2)
                  .fontWeight(.semibold)
                  .foregroundStyle(.neutral600)
               
               ZStack{
                  Image("challenge_bg")
                  
                  HStack{
                     Image("gold_star")
                        .padding(.trailing)
                     
                     VStack(alignment: .leading){
                        Text("First Journey")
                           .font(.headline)
                           .foregroundStyle(.white)
                        Text("Reach out your first talent")
                           .font(.subheadline)
                           .foregroundStyle(.white)
                        Text("+100 Points")
                           .font(.subheadline)
                           .padding(3)
                           .padding(.horizontal, 8)
                           .foregroundStyle(.white)
                           .background(.white.opacity(0.2))
                           .clipShape(RoundedRectangle(cornerRadius: 12))
                     }
                     
                     Spacer()
                  }
                  .padding(.horizontal, 21)
               }
               .frame(width: 345, height: 112)
            }
            .padding(.top, 24)
            .padding(.bottom, 20)
            
            
            Rectangle()
               .frame(width: 393, height: 4)
               .foregroundStyle(.neutral)
            
            
            VStack{
               HStack {
                  Text("Explore Talents")
                     .frame(maxWidth: .infinity, alignment: .leading)
                     .font(.title2)
                     .fontWeight(.semibold)
                     .foregroundStyle(.neutral600)
                  
                  NavigationLink {
                     AllTalentsView()
                        .toolbar(.hidden, for: .tabBar)
                        .navigationBarBackButtonHidden(true)
                  } label: {
                     Text("See all")
                  }
                  .foregroundStyle(.black.opacity(0.4))
                  
               }
               
               NavigationLink {
                  TalentDetailView()
                     .toolbar(.hidden, for: .tabBar)
                     .navigationBarBackButtonHidden(true)
               } label: {
                  TalentListView()
                     .padding()
                     .background(.white)
                     .clipShape(RoundedRectangle(cornerRadius: 12))
                     .overlay {
                        RoundedRectangle(cornerRadius: 12)
                           .stroke(.black.opacity(0.1))
                     }
               }
               .foregroundStyle(.black)
            }
            .padding(.horizontal, 21)
            .padding(.top, 16)
         }
      }
      .background(.white)
      .ignoresSafeArea(edges: .top)
   }
}

#Preview {
   DashboardView()
}
