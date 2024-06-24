//
//  DescriptionView.swift
//  Wavern
//
//  Created by Paulus Michael on 21/06/24.
//

import SwiftUI

struct DescriptionView: View {
    var userExp: Int
    var offering: Int
    var willingToRelocate: String
   var body: some View {
      VStack(alignment: .leading, spacing: 4){
         HStack{
            Image(systemName: "suitcase")
            Text(String(userExp))
               .font(Fonts.medium13)
         }
         
         HStack{
            Image(systemName: "creditcard")
            Text(String(offering))
               .font(Fonts.medium13)
         }
         
         HStack{
            Image(systemName: "suitcase")
            Text(willingToRelocate)
               .font(Fonts.medium13)
         }
      }
      .opacity(0.4)
   }
}

#Preview {
    DescriptionView(userExp: 3, offering: 5000000, willingToRelocate: "Willing to Relocate")
}
