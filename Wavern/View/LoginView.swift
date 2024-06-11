//
//  LoginView.swift
//  Wavern
//
//  Created by Paulus Michael on 11/06/24.
//

import SwiftUI

struct LoginView: View {
   @State var email: String = ""
   @State var password: String = ""
   
   var body: some View {
      VStack{
         Spacer()
         
         VStack{
            Text("Login")
               .font(.title)
               .fontWeight(.semibold)
               .frame(maxWidth: .infinity, alignment: .leading)
            
            // MARK: Form
            VStack {
               VStack {
                  Text("Email")
                     .font(.title2)
                     .fontWeight(.semibold)
                     .frame(maxWidth: .infinity, alignment: .leading)
                  
                  TextField(text: $email) {
                     Text("Email")
                  }
                  .frame(height: 52)
                  .padding(.horizontal)
                  .background(.neutral)
                  .clipShape(RoundedRectangle(cornerRadius: 12))
               }
               .padding(.bottom, 18)
               
               Text("Password")
                  .font(.title2)
                  .fontWeight(.semibold)
                  .frame(maxWidth: .infinity, alignment: .leading)
               
               TextField(text: $password) {
                  Text("Password")
               }
               .frame(height: 52)
               .padding(.horizontal)
               .background(.neutral)
               .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding(.top, 14)
            .padding(.bottom, 32)
            
            // MARK: Button
            VStack{
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
               .padding(.bottom, 16)
               
               HStack{
                  Text("Don't have an account?")
                     .fontWeight(.semibold)
                  
                  NavigationLink {
                     SignUpView()
                  } label: {
                     Text("Sign Up")
                  }
                  .foregroundStyle(.primaryPurple)
                  .fontWeight(.semibold)

               }
            }
         }
         .padding(.horizontal, 28)
         
         Spacer()
      }
   }
}

#Preview {
   LoginView()
}
