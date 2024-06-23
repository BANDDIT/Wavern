//
//  AllTalentsView.swift
//  Wavern
//
//  Created by Paulus Michael on 19/06/24.
//

import SwiftUI

struct AllTalentsView: View {
   @Environment(\.dismiss) var dismiss
   @Binding var path: NavigationPath
   
   var body: some View {
      ScrollView{
         VStack(alignment: .leading) {
            Button(action: {
               path.removeLast()
            }, label: {
               Image(systemName: "arrow.left")
                  .opacity(0.5)
               
               Text("Talents")
                  .font(.headline)
            })
            .foregroundStyle(.black)
            .padding(.horizontal)
            
            Divider()
         }
         
         VStack {
            ForEach(0..<3){_ in
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
         }
         .padding()
      }
   }
}

#Preview {
   NavigationStack {
      AllTalentsView(path: .constant(NavigationPath()))
   }
}
