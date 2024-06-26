//
//  RoleModalView.swift
//  Wavern
//
//  Created by Paulus Michael on 24/06/24.
//

import SwiftUI

struct RoleModalView: View {
   var roles = ["Product Designer", "Business Analyst", "UI/UX Designer"]
   @Environment(\.dismiss) var dismiss
   
   @Binding var selectedRoles: [String]
   @State var rolesBool: [Bool]
   
   init(selectedRoles: Binding<[String]>) {
      self._selectedRoles = selectedRoles
      self._rolesBool = State(initialValue: roles.map { selectedRoles.wrappedValue.contains($0) })
   }
   
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
         
         CustomButtons(text: "Save", bgColor: Colors.purple600, txtColor: Colors.white, height: 56, action: {
            selectedRoles = roles.indices.compactMap { rolesBool[$0] ? roles[$0] : nil }
            dismiss()
         })
         .padding(.vertical)
      }
      .padding()
      .frame(width: UIScreen.main.bounds.width, alignment: .leading)
   }
}

#Preview {
   RoleModalView(selectedRoles: .constant([""]))
}
