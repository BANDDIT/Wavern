//
//  DashboardView.swift
//  Wavern
//
//  Created by Paulus Michael on 18/06/24.
//

import SwiftUI

struct DashboardView: View {
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
               
               HStack {
                  VStack {
                     Text("0")
                        .font(.title3)
                        .fontWeight(.semibold)
                     
                     Text("Need Screening")
                        .font(.caption2)
                        .opacity(0.5)
                  }
                  .frame(maxWidth: .infinity)
                  .padding(.leading, 8)
                  
                  Divider()
                     .padding(.vertical, 20)
                  
                  VStack {
                     Text("0")
                        .font(.title3)
                        .fontWeight(.semibold)
                     
                     Text("Interviewed")
                        .font(.caption2)
                        .opacity(0.5)
                  }
                  .frame(maxWidth: .infinity)
                  
                  Divider()
                     .padding(.vertical, 20)
                  
                  VStack {
                     Text("0")
                        .font(.title3)
                        .fontWeight(.semibold)
                     
                     Text("Shortlisted")
                        .font(.caption2)
                        .opacity(0.5)
                  }
                  .frame(maxWidth: .infinity)
                  .padding(.trailing, 8)
               }
               .frame(width: 353, height: 80)
               .background(Color(.systemGray6))
               .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding(.top, 60)
         }
         
         // MARK: Talent list
         VStack{
            Text("Explore Talents")
               .frame(maxWidth: .infinity, alignment: .leading)
               .font(.title)
               .fontWeight(.semibold)
               .foregroundStyle(.neutral600)
            Spacer()
         }
         .padding(.horizontal, 21)
         .padding(.top, 26)
         .background(.neutral)
         
         Spacer()
      }
      .background(.white)
      .ignoresSafeArea(edges: .top)
   }
}

#Preview {
   DashboardView()
}
