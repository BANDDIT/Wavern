//
//  TalentDetailView.swift
//  Wavern
//
//  Created by Paulus Michael on 19/06/24.
//

import SwiftUI

struct TalentDetailView: View {
   @Environment(\.dismiss) var dismiss
   let corners: UIRectCorner = [.topLeft, .bottomLeft, .topRight, .bottomRight]
   
   var body: some View {
      VStack(alignment: .leading){
         VStack (alignment: .leading){
            Image("DummyTalentsProfile")
               .frame(width: 394, height: 269)
               .scaledToFit()
               .ignoresSafeArea()
            
            VStack(alignment: .leading) {
               HStack {
                  Text("Jesslyn Devaline")
                     .font(.title)
                     .fontWeight(.semibold)
                  
                  EmploymentTypeView(corners: corners, type: .full_time)
               }
               
               Text("Product Designer")
                  .font(.title2)
                  .opacity(0.5)
            }
            .padding()
         }
         .ignoresSafeArea()
         
         Spacer()
      }
      .toolbar(content: {
         ToolbarItem(placement: .topBarLeading) {
            Button(action: {
               dismiss()
            }, label: {
               Image(systemName: "arrow.left")
            })
            .foregroundStyle(.white)
         }
      })
   }
}

#Preview {
   NavigationStack {
      TalentDetailView()
   }
}
