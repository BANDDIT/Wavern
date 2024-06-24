//
//  TalentCardView.swift
//  Wavern
//
//  Created by Paulus Michael on 24/06/24.
//

import SwiftUI

struct TalentCardView: View {
   @Binding var path: NavigationPath
   
   var body: some View {
      VStack(alignment: .center){
         Image(systemName: "arrow.left")
            .padding(.top, 24)
            .padding(.horizontal)
            .padding(.bottom, 4)
            .frame(maxWidth: .infinity, alignment: .leading)
            .foregroundStyle(Colors.white)
            .onTapGesture {
               path.removeLast()
            }
         
         VStack {
            Text("Recommended based on your saved talents")
               .frame(maxWidth: .infinity)
               .padding(12)
               .background(Colors.yellow100)
               .font(Fonts.semibold14)
               .foregroundStyle(Colors.yellow600)
            
            HStack{
               Image("DummyTalentsProfile")
                  .resizable()
                  .clipShape(Circle())
                  .scaledToFill()
                  .frame(width: 56, height: 56)
               
               VStack(alignment: .leading) {
                  Text("Jesslyn Devaline")
                     .font(Fonts.semibold20)
                  
                  Spacer()
            
                  Text("Product Designer")
                     .font(Fonts.regular16)
                     .foregroundStyle(Colors.neutral600)
               }
               .frame(height: 20)
               
               Spacer()
               
               CustomEmploymentType(corners: [.topLeft, .topRight, .bottomLeft, .bottomRight], type: .full_time)
            }
            .padding()
            
            Text("Hi! I am Jesslyn, a product designer with 2+ years of experience! I am experienced in research, prototyping, and product strategy.")
               .font(Fonts.regular14)
               .foregroundStyle(Colors.neutral500)
               .padding([.horizontal])
            
            HStack{
               HStack{
                  Image(systemName: "suitcase")
                     .imageScale(.small)
                  
                  Text("1-3 YOE")
                     .font(Fonts.regular13)
               }
               
               Divider()
                  .frame(height: 30)
               
               HStack{
                  Image(systemName: "creditcard")
                     .imageScale(.small)
                  
                  Text("Rp. 5.000.000")
                     .font(Fonts.regular13)
               }
               
               Divider()
                  .frame(height: 30)
               
               HStack{
                  //                     Image(systemName: "")
                  //                     .imageScale(.small)
                  Text("Relocate")
                     .font(Fonts.regular13)
               }
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(Colors.neutral100)
            .foregroundStyle(Colors.neutral500)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
         }
         //            .padding()
         .background(Colors.white)
         .clipShape(RoundedRectangle(cornerRadius: 12))
         .padding()
         
         //            Spacer()
      }
      
   }
}

#Preview {
   TalentCardView(path: .constant(NavigationPath()))
}
