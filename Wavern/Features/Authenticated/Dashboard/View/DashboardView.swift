//
//  DashboardView.swift
//  Wavern
//
//  Created by Paulus Michael on 18/06/24.
//

import SwiftUI

struct DashboardView: View {
   @Binding var path: NavigationPath
   @State var showModal: Bool = false
   
   var body: some View {
      ScrollView{
         // MARK: Top Section (Details)
         HeaderView()
         
         // MARK: Challenge Box & Talents List
         ChallengeView()
         
         Rectangle()
            .frame(maxWidth: .infinity, maxHeight: 4)
            .foregroundStyle(.neutral)
         
         ExploreTalentsView(path: $path)
      }
      .background(Colors.white)
      .ignoresSafeArea()
      .sheet(isPresented: $showModal, content: {
         VStack {
            Text("Hello")
         }
      })
   }
}

#Preview {
   NavigationStack {
      DashboardView(path: .constant(NavigationPath()))
   }
}
