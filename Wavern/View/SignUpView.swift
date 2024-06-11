//
//  SignUpView.swift
//  Wavern
//
//  Created by Paulus Michael on 11/06/24.
//

import SwiftUI

struct SignUpView: View {
   @State var name: String = ""
   @State var email: String = ""
   @State var password: String = ""
   @State var confirmPassword: String = ""
   
   var body: some View {
      VStack{
         Spacer()
         
         VStack{
            Text("Sign Up")
               .font(.title)
               .fontWeight(.semibold)
               .frame(maxWidth: .infinity, alignment: .leading)
            
            // MARK: Form
            VStack {
               VStack {
                  Text("Name")
                     .font(.title3)
                     .fontWeight(.semibold)
                     .frame(maxWidth: .infinity, alignment: .leading)
                  
                  TextField(text: $name) {
                     Text("Name")
                  }
                  .frame(height: 52)
                  .padding(.horizontal)
                  .background(.neutral)
                  .clipShape(RoundedRectangle(cornerRadius: 12))
               }
               .padding(.bottom, 18)
               
               VStack {
                  Text("Email")
                     .font(.title3)
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
               
               VStack {
                  Text("Password")
                     .font(.title3)
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
               .padding(.bottom, 18)
               
               Text("Confirm Password")
                  .font(.title3)
                  .fontWeight(.semibold)
                  .frame(maxWidth: .infinity, alignment: .leading)
               
               TextField(text: $confirmPassword) {
                  Text("Confirm Password")
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
                  Text("Have an account?")
                     .fontWeight(.semibold)
                  
                  NavigationLink {
                     LoginView()
                  } label: {
                     Text("Login")
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
   SignUpView()
}
