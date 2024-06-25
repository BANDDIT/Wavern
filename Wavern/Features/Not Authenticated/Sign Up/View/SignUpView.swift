//
//  SignUpView.swift
//  Wavern
//
//  Created by Paulus Michael on 11/06/24.
//

import SwiftUI

struct SignUpView: View {
   @StateObject var model = SignUpModel()
   
   var body: some View {
      VStack{
         Spacer()
         
         VStack{
            Text(Phrases.signUpTitle)
               .font(Fonts.semibold24)
               .frame(maxWidth: .infinity, alignment: .leading)
            
            SignUpForm(model: model)
               .padding(.vertical)
            
            SignUpButton(model: model)
         }
         .padding(.horizontal, Size.padding24)
         
         Spacer()
      }
   }
}

#Preview {
   SignUpView()
}
