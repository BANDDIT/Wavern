//
//  AllTalentsView.swift
//  Wavern
//
//  Created by Paulus Michael on 19/06/24.
//

import SwiftUI

struct AllTalentsView: View {
   @Environment(\.dismiss) var dismiss
   
   var body: some View {
      VStack {
         ScrollView{
            ForEach(0..<3){_ in
               NavigationLink {
                  TalentProfileView()
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
         }
         .padding()
      }
      .toolbar(content: {
         ToolbarItem(placement: .topBarLeading, content: {
            Button(action: {
               dismiss()
            }, label: {
               Image(systemName: "arrow.left")
                  .opacity(0.5)
               
               Text("Talents")
                  .font(.headline)
            })
            .foregroundStyle(.black)
         })
      })
   }
}

#Preview {
   NavigationStack {
      AllTalentsView()
   }
}
