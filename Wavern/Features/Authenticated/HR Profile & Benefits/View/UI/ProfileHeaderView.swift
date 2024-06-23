//
//  ProfileHeaderView.swift
//  Wavern
//
//  Created by Paulus Michael on 23/06/24.
//

import SwiftUI

struct ProfileHeaderView: View {
   @Binding var path: NavigationPath
   
   var body: some View {
      VStack {
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
               
               Text("HR of tiket.com")
                  .font(Fonts.regular16)
            }
            .frame(height: 20)
            
            Spacer()
            
            Image(systemName: "gear")
         }
         .foregroundStyle(.white)
         
         PointNavigationLink()
            .onTapGesture {
               path.append(Destination.rewardsView)
            }
         
         InterviewedAmount()
      }
      .padding()
      .padding(.top, 60)
      .background(
         Background.bgGradient
      )
      .clipShape(CustomCorners(corners: [.bottomLeft, .bottomRight], radius: 12))
   }
}

#Preview {
   ProfileHeaderView(path: .constant(NavigationPath()))
}
