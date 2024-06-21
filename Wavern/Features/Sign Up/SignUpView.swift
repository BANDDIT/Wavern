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
   @State var isPasswordVisible: Bool = false
   
   private var areTextFieldsFilled: Bool {
      name.isEmpty || email.isEmpty || password.isEmpty || confirmPassword.isEmpty
   }
   
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
                  
                  HStack{
                     if isPasswordVisible {
                        TextField(text: $password) {
                           Text("Password")
                        }
                     }else{
                        SecureField(text: $password) {
                           Text("Password")
                        }
                     }
                     
                     Button(action: {
                        isPasswordVisible.toggle()
                     }, label: {
                        Image(systemName: isPasswordVisible ? "eye.slash" : "eye")
                     })
                     .foregroundStyle(.gray)
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
               
               HStack{
                  if isPasswordVisible {
                     TextField(text: $confirmPassword) {
                        Text("Password")
                     }
                  }else{
                     SecureField(text: $confirmPassword) {
                        Text("Password")
                     }
                  }
                  
                  Button(action: {
                     isPasswordVisible.toggle()
                  }, label: {
                     Image(systemName: isPasswordVisible ? "eye.slash" : "eye")
                  })
                  .foregroundStyle(.gray)
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
                  Text("Sign Up")
                     .frame(minWidth: 0, maxWidth: .infinity)
                     .font(.system(size: 17))
                     .fontWeight(.semibold)
                     .padding()
                     .foregroundColor(areTextFieldsFilled ? .neutral500 : .white)
                     .background(areTextFieldsFilled ? .neutral300 : .primaryPurple)
                     .clipShape(RoundedRectangle(cornerRadius: 12))
               }
               .padding(.bottom, 16)
               .disabled(areTextFieldsFilled)
               
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
