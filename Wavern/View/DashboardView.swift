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
                  .background(Color(.systemGray6))
                  .clipShape(RoundedRectangle(cornerRadius: 12))
               }
               .padding(.horizontal)
            }
            .padding(.top, 60)
         }
         
         
         // MARK: Talent list
         ScrollView {
            VStack{
               Text("Explore Talents")
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .font(.title)
                  .fontWeight(.semibold)
                  .foregroundStyle(.neutral600)
               
               TalentListView()
                  .padding()
                  .background(.white)
                  .clipShape(RoundedRectangle(cornerRadius: 12))
                  .overlay {
                     RoundedRectangle(cornerRadius: 12)
                        .stroke(.black.opacity(0.1))
                  }
            }
            .padding(.horizontal, 21)
            .padding(.top, 26)
         }
      }
      .background(.neutral)
      .ignoresSafeArea(edges: .top)
   }
}

#Preview {
   DashboardView()
}
