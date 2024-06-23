//
//  SearchTextField.swift
//  Wavern
//
//  Created by Paulus Michael on 22/06/24.
//

import SwiftUI

struct SearchTextField: View {
   @Binding var search: String
   
   var body: some View {
      HStack {
         Image(systemName: "magnifyingglass")
            .opacity(0.3)
         
         TextField(text: $search) {
            Text("Enter Role, Skills, YOE, or Budget")
         }
      }
      .padding()
      .background(Colors.white)
      .clipShape(RoundedRectangle(cornerRadius: Size.cornerRadius))
   }
}

//#Preview {
//   SearchTextField()
//}
