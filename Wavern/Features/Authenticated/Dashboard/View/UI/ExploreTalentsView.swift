//
//  ExploreTalentsView.swift
//  Wavern
//
//  Created by Paulus Michael on 21/06/24.
//

import SwiftUI

struct ExploreTalentsView: View {
   @Binding var path: NavigationPath
   
   var body: some View {
      VStack{
         HStack {
            Text("Explore Talents")
               .frame(maxWidth: .infinity, alignment: .leading)
               .font(Fonts.semibold20)
               .foregroundStyle(Colors.neutral600)
            
            Text("See all")
               .onTapGesture {
                  path.append(Destination.allTalentsView)
               }
               .foregroundStyle(.black.opacity(0.4))
               .font(Fonts.regular14)
         }
         
         FilterView()
            .padding(.vertical, 8)
         
         TalentListView()
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .overlay {
               RoundedRectangle(cornerRadius: 12)
                  .stroke(.black.opacity(0.1))
            }
            .foregroundStyle(.black)
            .onTapGesture {
               path.append(Destination.talentDetailView)
            }
      }
      .padding(.horizontal, 21)
      .padding(.top, 16)
   }
}

#Preview {
   ExploreTalentsView(path: .constant(NavigationPath()))
}
