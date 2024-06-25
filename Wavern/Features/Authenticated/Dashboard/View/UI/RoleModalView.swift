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
      VStack(alignment: .leading, spacing: 12){
         Text("Role")
            .font(Fonts.semibold20)
            .foregroundStyle(.black)
            .padding(.vertical)
         
         ForEach(0..<roles.count){ index in
            HStack {
               CustomCheckbox(checked: $rolesBool[index])
               Text(roles[index])
                  .font(Fonts.medium14)
                  .foregroundStyle(Colors.neutral500)
            }
            
            if index != roles.count - 1{
               Divider()
            }
         }
         
         CustomButtons(text: "Save", bgColor: Colors.purple600, txtColor: Colors.white, height: 56, action: {})
            .padding(.vertical)
      }
      .padding()
      .frame(width: UIScreen.main.bounds.width, alignment: .leading)
   }
}

#Preview {
   RoleModalView()
}
