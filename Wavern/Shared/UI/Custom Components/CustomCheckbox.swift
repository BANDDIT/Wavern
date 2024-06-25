//
//  CustomCheckbox.swift
//  Wavern
//
//  Created by Paulus Michael on 24/06/24.
//

import SwiftUI

struct CustomCheckbox: View {
   @Binding var checked: Bool
   
   var body: some View {
      Image(systemName: checked ? "checkmark.square.fill" : "square")
         .foregroundColor(checked ? Colors.purple600 : Colors.neutral400)
         .onTapGesture {
            self.checked.toggle()
         }
         .frame(width: 20, height: 20)
   }
}

#Preview {
   CustomCheckbox(checked: .constant(true))
}
