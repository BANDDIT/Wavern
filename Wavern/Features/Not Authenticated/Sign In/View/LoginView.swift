//
//  LoginView.swift
//  Wavern
//
//  Created by Paulus Michael on 11/06/24.
//

import SwiftUI

struct LoginView: View {
   var body: some View {
      VStack{
         Spacer()
         
         VStack{
            Text(Phrases.loginTitle)
               .font(Fonts.semibold24)
               .frame(maxWidth: .infinity, alignment: .leading)
            
            // MARK: Form
            LoginForm()
               .padding(.vertical)
            
            // MARK: Button
            LoginButton()
         }
         .padding(.horizontal, Size.padding24)
         
         Spacer()
      }
   }
}

#Preview {
   LoginView()
}
