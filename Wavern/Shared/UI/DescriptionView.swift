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
         HStack(spacing: 4){
            Image("briefcase")
            Text("\(userExp) YOE")
               .font(Fonts.medium13)
               .foregroundStyle(Colors.neutral400)
         }
         
         HStack(spacing: 4){
            Image("credit_card")
            Text("Rp. \(offering)")
               .font(Fonts.medium13)
               .foregroundStyle(Colors.neutral400)
         }
         
         HStack(spacing: 4){
            Image("pin")
            Text(willingToRelocate)
               .font(Fonts.medium13)
               .foregroundStyle(Colors.neutral400)
         }
      }
   }
}

#Preview {
   DescriptionView(userExp: 3, offering: 5000000, willingToRelocate: "Willing to Relocate")
}
