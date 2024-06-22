//
//  ExploreTalentsView.swift
//  Wavern
//
//  Created by Paulus Michael on 21/06/24.
//

import SwiftUI

struct ExploreTalentsView: View {
    var body: some View {
       VStack{
          HStack {
             Text("Explore Talents")
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(Fonts.semibold20)
                .foregroundStyle(Colors.neutral600)
             
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

#Preview {
    ExploreTalentsView()
}
