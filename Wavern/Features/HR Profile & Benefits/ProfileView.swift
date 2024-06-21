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
                     .font(.headline)
                  
                  Spacer()
                  
                  Text("HR of tiket.com")
                     .font(.subheadline)
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
                     .font(.subheadline)
                     .fontWeight(.semibold)
                  
                  Spacer()
                  
                  Text("100 Points")
                     .font(.subheadline)
                     .fontWeight(.semibold)
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
                     .font(.title3)
                     .fontWeight(.semibold)
                  
                  Text("Interviewed")
                     .font(.caption)
               }
               .frame(maxWidth: .infinity)
               
               Divider()
                  .frame(height: 30)
               
               VStack{
                  Text("5")
                     .font(.title3)
                     .fontWeight(.semibold)
                  Text("Accepted")
                     .font(.caption)
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
            LinearGradient(
               stops: [
                  Gradient.Stop(color: .primaryPurple, location: 0.00),
                  Gradient.Stop(color: .secondaryPurple, location: 1.00),
               ],
               startPoint: UnitPoint(x: 0.5, y: 0),
               endPoint: UnitPoint(x: 0.5, y: 1)
            )
         )
         .clipShape(CustomCorners(corners: [.bottomLeft, .bottomRight], radius: 12))
         
         VStack(alignment: .leading) {
            Text("Your Challenge")
               .font(.title)
               .fontWeight(.semibold)
               .foregroundStyle(.neutral600)
               .padding(.bottom, 16)
            
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
