//
//  InterviewedAmount.swift
//  Wavern
//
//  Created by Paulus Michael on 23/06/24.
//

import SwiftUI

struct InterviewedAmount: View {
   var body: some View {
      HStack{
         VStack{
            Text("0")
               .font(Fonts.semibold20)
            
            Text("Interviewed")
               .font(Fonts.regular10)
         }
         .frame(maxWidth: .infinity)
         
         Divider()
            .frame(height: 30)
         
         VStack{
            Text("5")
               .font(Fonts.semibold20)
            Text("Accepted")
               .font(Fonts.regular10)
         }
         .frame(maxWidth: .infinity)
      }
      .padding()
      .background(.white)
      .clipShape(RoundedRectangle(cornerRadius: 12))
      .padding(.bottom, 12)
   }
}

#Preview {
   InterviewedAmount()
}
