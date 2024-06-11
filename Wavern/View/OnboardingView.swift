//
//  OnboardingView.swift
//  Wavern
//
//  Created by Paulus Michael on 11/06/24.
//

import SwiftUI

struct OnboardingView: View {
   var body: some View {
      NavigationStack{
         VStack {
            Spacer()
            
            ZStack {
               Rectangle()
                  .frame(height: 300)
                  .foregroundStyle(.white)
               
               VStack{
                  // MARK: Tiga button diatas
                  HStack{
                     ForEach(0..<3){ _ in
                        Circle()
                           .frame(width: 8, height: 8)
                           .opacity(0.2)
                     }
                  }
                  
                  // MARK: Title
                  VStack {
                     Text("We Help Hiring Partners Connect with Tech Talents")
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding(.vertical, 16)
                  }
                  
                  // MARK: Button login & sign up
                  VStack {
                     NavigationLink(destination: LoginView()) {
                        Text("Login")
                           .frame(minWidth: 0, maxWidth: .infinity)
                           .font(.system(size: 17))
                           .fontWeight(.semibold)
                           .padding()
                           .foregroundColor(.white)
                           .background(.primaryPurple)
                           .clipShape(RoundedRectangle(cornerRadius: 12))
                     }
                     
                     NavigationLink(destination: SignUpView()) {
                        Text("Sign Up")
                           .frame(minWidth: 0, maxWidth: .infinity)
                           .font(.system(size: 17))
                           .fontWeight(.semibold)
                           .padding()
                           .foregroundColor(.primaryPurple)
                     }
                  }
               }
               .padding(.horizontal, 24)
               
            }
         }
         .ignoresSafeArea()
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
      }
   }
}

#Preview {
   OnboardingView()
}
