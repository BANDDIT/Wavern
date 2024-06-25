//
//  BudgetModalView.swift
//  Wavern
//
//  Created by Paulus Michael on 24/06/24.
//

import SwiftUI

struct BudgetModalView: View {
   @State var budget: String = ""
   
   var body: some View {
      VStack(alignment: .leading) {
         Text("Budget")
            .font(Fonts.semibold20)
         TextField(text: $budget) {
            Text("Input")
               .font(Fonts.regular13)
         }
         .padding()
         .background(Colors.neutral100)
         .clipShape(RoundedRectangle(cornerRadius: 12))
      }
      .padding()
      .frame(width: UIScreen.main.bounds.width, alignment: .leading)
   }
}

#Preview {
   BudgetModalView()
}
