//
//  SignUpButton.swift
//  Wavern
//
//  Created by Paulus Michael on 22/06/24.
//

import SwiftUI

struct SignUpButton: View {
   @ObservedObject var model: SignUpModel
   
   var viewModel = SignUpViewModel()
   
   var body: some View {
      VStack{
         NavigationLink(destination: LoginView()) {
            viewModel.navigationLink(model: model)
         }
         .padding(.bottom)
         .disabled(viewModel.areTextFieldsFilled(model: model))
         
         HStack{
            Text(Phrases.alreadyHaveAcc)
               .font(Fonts.semibold16)
               .foregroundStyle(.black)
            
            NavigationLink {
               LoginView()
            } label: {
               Text(Phrases.loginTitle)
            }
            .foregroundStyle(.primaryPurple)
            .font(Fonts.semibold16)
            
         }
      }
   }
}

//
