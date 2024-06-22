//
//  LoginButton.swift
//  Wavern
//
//  Created by Paulus Michael on 22/06/24.
//

import SwiftUI

struct LoginButton: View {
   var viewModel = LoginViewModel()
   
   var body: some View {
      VStack{
         NavigationLink(destination: LoginView()) {
            viewModel.navigationLink()
         }
         .padding(.bottom)
         .disabled(viewModel.areTextFieldsFilled())
         
         HStack{
            Text(Phrases.dontHaveAcc)
               .font(Fonts.semibold16)
            
            NavigationLink {
               SignUpView()
            } label: {
               Text(Phrases.signUpTitle)
            }
            .foregroundStyle(Colors.purple600)
            .font(Fonts.semibold16)
            
         }
      }
   }
}

#Preview {
   LoginButton()
}
