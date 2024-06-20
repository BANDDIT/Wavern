//
//  TalentListView.swift
//  Wavern
//
//  Created by Paulus Michael on 19/06/24.
//

import SwiftUI

struct TalentListView: View {
   var body: some View {
      HStack{
         ZStack(alignment: .topLeading){
            Image("DummyTalentsProfile")
               .resizable()
               .frame(width: 104, height: 140)
            
            EmploymentTypeView(type: .full_time)
         }
         .clipShape(RoundedRectangle(cornerRadius: 12))
         
         VStack(alignment: .leading){
            VStack(alignment: .leading) {
               Text("Jesslyn Devaline")
                  .font(.headline)
               
               Text("Product Designer")
                  .font(.subheadline)
                  .opacity(0.5)
            }
            
            VStack(alignment: .leading) {
               HStack{
                  Image(systemName: "suitcase")
                  Text("1-3 YOE")
                     .font(.subheadline)
               }
               
               HStack{
                  Image(systemName: "creditcard")
                  Text("Rp. 5.000.000")
                     .font(.subheadline)
               }
               
               HStack{
                  Image(systemName: "mappin.and.ellipse")
                  Text("Willing to Relocate")
                     .font(.subheadline)
               }
            }
            .padding(.vertical, 2)
            .opacity(0.3)
            
            HStack{
               Text("UI/UX Designer")
                  .font(.caption2)
                  .padding(2)
                  .padding(.horizontal, 4)
                  .background(.purple100)
                  .foregroundStyle(.primaryPurple)
                  .clipShape(RoundedRectangle(cornerRadius: 12))
               
               Text("Research")
                  .font(.caption2)
                  .padding(2)
                  .padding(.horizontal, 4)
                  .background(.purple100)
                  .foregroundStyle(.primaryPurple)
                  .clipShape(RoundedRectangle(cornerRadius: 12))
               
               Text("5+")
                  .font(.caption2)
                  .padding(2)
                  .padding(.horizontal, 4)
                  .background(.purple100)
                  .foregroundStyle(.primaryPurple)
                  .clipShape(RoundedRectangle(cornerRadius: 12))
            }
         }
         
         Spacer()
      }
   }
}

#Preview {
   TalentListView()
}
