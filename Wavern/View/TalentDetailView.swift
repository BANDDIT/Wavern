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
      
      VStack(alignment: .leading) {
         Image("DummyTalentsProfile")
            .frame(width: 393, height: 269)
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
         
         VStack(alignment: .leading) {
            HStack{
               Image(systemName: "suitcase")
               
               Text("1-3 YOE")
            }
            
            HStack{
               Image(systemName: "creditcard")
               
               Text("Rp. 5.000.000")
            }
            
            HStack{
               Image(systemName: "suitcase")
               
               Text("Willing to Relocate")
            }
         }
         .padding(.horizontal)
         .opacity(0.3)
         
         VStack(alignment: .leading){
            Text("Skills")
               .font(.title3)
               .fontWeight(.semibold)
            
            HStack{
               Text("UI/UX Designer")
                  .font(.caption2)
                  .padding(8)
                  .background(.purple100)
                  .foregroundStyle(.primaryPurple)
                  .clipShape(RoundedRectangle(cornerRadius: 12))
               
               Text("UI/UX Designer")
                  .font(.caption2)
                  .padding(8)
                  .background(.purple100)
                  .foregroundStyle(.primaryPurple)
                  .clipShape(RoundedRectangle(cornerRadius: 12))
               
               Text("UI/UX Designer")
                  .font(.caption2)
                  .padding(8)
                  .background(.purple100)
                  .foregroundStyle(.primaryPurple)
                  .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            
            HStack{
               Text("UI/UX Designer")
                  .font(.caption2)
                  .padding(8)
                  .background(.purple100)
                  .foregroundStyle(.primaryPurple)
                  .clipShape(RoundedRectangle(cornerRadius: 12))
               
               Text("UI/UX Designer")
                  .font(.caption2)
                  .padding(8)
                  .background(.purple100)
                  .foregroundStyle(.primaryPurple)
                  .clipShape(RoundedRectangle(cornerRadius: 12))
               
               Text("UI/UX Designer")
                  .font(.caption2)
                  .padding(8)
                  .background(.purple100)
                  .foregroundStyle(.primaryPurple)
                  .clipShape(RoundedRectangle(cornerRadius: 12))
            }
         }
         .padding()
         
         VStack(alignment: .leading){
            Text("Portfolio Links")
               .font(.title3)
               .fontWeight(.semibold)
            
            HStack{
               ZStack{
                  Circle()
                     .frame(width: 42, height: 42)
                     .foregroundStyle(
                        LinearGradient(
                           stops: [
                              Gradient.Stop(color: .primaryPurple, location: 0.00),
                              Gradient.Stop(color: .secondaryPurple, location: 1.00),
                           ],
                           startPoint: UnitPoint(x: 0.5, y: 0),
                           endPoint: UnitPoint(x: 0.5, y: 1)
                        )
                     )
                  
                  Image(systemName: "envelope")
                     .foregroundStyle(.white)
               }
               
               ZStack{
                  Circle()
                     .frame(width: 42, height: 42)
                     .foregroundStyle(
                        LinearGradient(
                           stops: [
                              Gradient.Stop(color: .primaryPurple, location: 0.00),
                              Gradient.Stop(color: .secondaryPurple, location: 1.00),
                           ],
                           startPoint: UnitPoint(x: 0.5, y: 0),
                           endPoint: UnitPoint(x: 0.5, y: 1)
                        )
                     )
                  
                  Image(systemName: "envelope")
                     .foregroundStyle(.white)
               }
               
               ZStack{
                  Circle()
                     .frame(width: 42, height: 42)
                     .foregroundStyle(
                        LinearGradient(
                           stops: [
                              Gradient.Stop(color: .primaryPurple, location: 0.00),
                              Gradient.Stop(color: .secondaryPurple, location: 1.00),
                           ],
                           startPoint: UnitPoint(x: 0.5, y: 0),
                           endPoint: UnitPoint(x: 0.5, y: 1)
                        )
                     )
                  
                  Image(systemName: "envelope")
                     .foregroundStyle(.white)
               }
            }
         }
         .padding(.horizontal)
         
         Button(action: {}, label: {
            Text("Invite to Interview")
               .foregroundStyle(.white)
               .font(.headline)
               .frame(maxWidth: .infinity, minHeight: 56)
               .background(.primaryPurple)
               .clipShape(RoundedRectangle(cornerRadius: 12))
         })
         .padding()
         
         Spacer()
      }
      .ignoresSafeArea()
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
