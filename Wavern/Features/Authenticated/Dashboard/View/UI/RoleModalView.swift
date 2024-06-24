//
//  RoleModalView.swift
//  Wavern
//
//  Created by Paulus Michael on 24/06/24.
//

import SwiftUI

struct RoleModalView: View {
   var roles = ["Product Designer", "Product Marketing", "Product Manager", "Backend Engineer", "Frontend Engineer", "iOS Developer", "Mobile Developer", "Data Scientist"]
   
   @State var rolesBool = [false, false, false, false, false, false, false, false]
   
   var body: some View {
      VStack(alignment: .leading){
         Text("Role")
         ForEach(0..<roles.count){ index in
            Toggle(isOn: $rolesBool[index]) {
               Text(roles[index])
            }
         }
      }
   }
}

#Preview {
   RoleModalView()
}
