//
//  SignUpView.swift
//  Wavern
//
//  Created by Paulus Michael on 11/06/24.
//

import SwiftUI

struct SignUpView: View {
   @StateObject var viewModel = AuthenticationSignUp()
   
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
                  
                  TextField(text: $viewModel.name) {
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
                  
                  TextField(text: $viewModel.email) {
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
                     if viewModel.isPasswordVisible {
                        TextField(text: $viewModel.password) {
                           Text("Password")
                        }
                     }else{
                        SecureField(text: $viewModel.password) {
                           Text("Password")
                        }
                     }
                     
                     Button(action: {
                        viewModel.isPasswordVisible.toggle()
                     }, label: {
                        Image(systemName: viewModel.isPasswordVisible ? "eye.slash" : "eye")
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
                  if viewModel.isPasswordVisible {
                     TextField(text: $viewModel.confirmPassword) {
                        Text("Password")
                     }
                  }else{
                     SecureField(text: $viewModel.confirmPassword) {
                        Text("Password")
                     }
                  }
                  
                  Button(action: {
                     viewModel.isPasswordVisible.toggle()
                  }, label: {
                     Image(systemName: viewModel.isPasswordVisible ? "eye.slash" : "eye")
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
                  viewModel.navigationLink()
               }
               .padding(.bottom, 16)
               .disabled(viewModel.areTextFieldsFilled())
               
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
