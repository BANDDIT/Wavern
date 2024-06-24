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
                  .foregroundStyle(Colors.white)
               
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
                        .font(Fonts.semibold24)
                        .padding(.vertical, 16)
                        .foregroundStyle(.black)
                  }
                  
                  // MARK: Button login & sign up
                  VStack {
                     NavigationLink(destination: SignUpView()) {
                        CustomNavigationLink(bgColor: Colors.purple600, txtColor: Colors.white, text: "Get Started")
                     }
                     
                     NavigationLink(destination: LoginView()) {
                        CustomNavigationLink(bgColor: Colors.white, txtColor: Colors.purple600, text: "I already have an account")
                     }
                  }
               }
               .padding(.horizontal, 24)
               
            }
         }
         .ignoresSafeArea()
         .background(
            Background.bgGradient
         )
      }
   }
}

#Preview {
   OnboardingView()
}
