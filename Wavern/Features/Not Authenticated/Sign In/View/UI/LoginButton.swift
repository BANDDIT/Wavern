//
//  LoginButton.swift
//  Wavern
//
//  Created by Paulus Michael on 22/06/24.
//

import SwiftUI

struct LoginButton: View {
   @ObservedObject var model: LoginModel
   
   var viewModel = LoginViewModel()
   
   var body: some View {
      VStack{
          NavigationLink(destination: DashboardView(path: .constant(NavigationPath()))) {
            viewModel.navigationLink(model: model)
         }
         .padding(.bottom)
         .disabled(viewModel.areTextFieldsFilled(model: model))
         
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

//#Preview {
//   LoginButton()
//}
