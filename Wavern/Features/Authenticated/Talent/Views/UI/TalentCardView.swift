//
//  TalentCardView.swift
//  Wavern
//
//  Created by Paulus Michael on 24/06/24.
//

import SwiftUI

struct TalentCardView: View {
   @Binding var path: NavigationPath
    @Environment(ModelData.self) private var modelData
    var user: Talent

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
                  Text(user.User_Nama)
                     .font(Fonts.semibold20)
                  
                  Spacer()
            
                  Text(user.Role)
                     .font(Fonts.regular16)
                     .foregroundStyle(Colors.neutral600)
               }
               .frame(height: 20)
               
               Spacer()
               
               CustomEmploymentType(corners: [.topLeft, .topRight, .bottomLeft, .bottomRight], type: .full_time)
            }
            .padding()
            
             Text(user.User_Description)
               .font(Fonts.regular14)
               .foregroundStyle(Colors.neutral500)
               .padding([.horizontal])
            
            HStack{
               HStack{
                  Image(systemName: "suitcase")
                     .imageScale(.small)
                  
                   Text("\(user.Experience)")
                     .font(Fonts.regular13)
               }
               
               Divider()
                  .frame(height: 30)
               
               HStack{
                  Image(systemName: "creditcard")
                     .imageScale(.small)
                  
                   Text("\(user.Offering)")
                     .font(Fonts.regular13)
               }
               
               Divider()
                  .frame(height: 30)
               
               HStack{
                  //                     Image(systemName: "")
                  //                     .imageScale(.small)
                   Text(user.Willing_To_relocate)
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
    TalentCardView(path: .constant(NavigationPath()), user: Talent(
        User_Nama: "justin",
        User_Email: "justinmail",
        User_Password: "password",
        User_Description: "desc",
        Role: "role", Experience: 1,
        Offering: 1000,
        Willing_To_relocate: "yes",
        Interview_Count: 1, Skills: [""], Links: [""]
    )).environment(ModelData())
}
