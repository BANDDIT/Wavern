//
//  LoginView.swift
//  Wavern
//
//  Created by Paulus Michael on 11/06/24.
//

import SwiftUI

struct LoginView: View {
   @StateObject private var model = LoginModel()
   var viewModel = LoginViewModel()
   
   var body: some View {
      VStack{
         Spacer()
         
         VStack{
            Text(Phrases.loginTitle)
               .font(Fonts.semibold24)
               .frame(maxWidth: .infinity, alignment: .leading)
            
            LoginForm(model: model)
               .padding(.vertical)
            
            LoginButton(model: model)
         }
         .padding(.horizontal, Size.padding24)
         
         Spacer()
      }
   }
}

#Preview {
   LoginView()
}
