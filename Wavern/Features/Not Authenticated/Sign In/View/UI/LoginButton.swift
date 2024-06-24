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
    
    @State private var path: NavigationPath = NavigationPath()
    @State private var progress: Double = 0.0 // Add the progress state
    
    var body: some View {
        VStack {
            NavigationLink(destination: DashboardView(path: $path, progress: $progress)) { // Pass the progress binding
                viewModel.navigationLink(model: model)
            }
            .padding(.bottom)
            .disabled(!viewModel.areTextFieldsFilled(model: model)) // Fix the condition to disable correctly
            
            HStack {
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
    LoginButton(model: LoginModel())
}


//#Preview {
//   LoginButton()
//}
