//
//  ProfileView.swift
//  Wavern
//
//  Created by Paulus Michael on 18/06/24.
//

import SwiftUI

struct ProfileView: View {
   var body: some View {
      VStack(alignment: .leading) {
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
            
            
            NavigationLink(destination: {
               RewardsView()
                  .navigationBarBackButtonHidden(true)
                  .toolbar(.hidden, for: .tabBar)
            }, label: {
               HStack{
                  Text("Bronze")
                     .font(Fonts.semibold13)
                  
                  Spacer()
                  
                  Text("100 Points")
                     .font(Fonts.semibold13)
               }
               .foregroundStyle(.white)
               .padding()
               .background(.white.opacity(0.15))
               .clipShape(RoundedRectangle(cornerRadius: 12))
               .padding(.vertical)
            })
            
            HStack{
               VStack{
                  Text("0")
                     .font(Fonts.semibold20)
                  
                  Text("Interviewed")
                     .font(Fonts.regular10)
               }
               .frame(maxWidth: .infinity)
               
               Divider()
                  .frame(height: 30)
               
               VStack{
                  Text("5")
                     .font(Fonts.semibold20)
                  Text("Accepted")
                     .font(Fonts.regular10)
               }
               .frame(maxWidth: .infinity)
            }
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding(.bottom, 12)
         }
         .padding()
         .padding(.top, 60)
         .background(
            Background.bgGradient
         )
         .clipShape(CustomCorners(corners: [.bottomLeft, .bottomRight], radius: 12))
         
         VStack(alignment: .leading) {
            Text("Your Challenge")
               .font(Fonts.semibold20)
               .foregroundStyle(.neutral600)
               .padding(.bottom)
            
            ScrollView(.horizontal, showsIndicators: false) {
               HStack{
                  AchievementCardView()
                  AchievementCardView()
                  AchievementCardView()
               }
            }
         }
         .padding()
      }
      .ignoresSafeArea()
      
      Spacer()
      
   }
}

#Preview {
   ProfileView()
}
