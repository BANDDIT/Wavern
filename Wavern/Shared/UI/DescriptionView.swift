//
//  DescriptionView.swift
//  Wavern
//
//  Created by Paulus Michael on 21/06/24.
//

import SwiftUI

struct DescriptionView: View {
   var body: some View {
      VStack(alignment: .leading, spacing: 4){
         HStack{
            Image(systemName: "suitcase")
            Text("1-3 YOE")
               .font(Fonts.medium13)
         }
         
         HStack{
            Image(systemName: "creditcard")
            Text("Rp5.000.000")
               .font(Fonts.medium13)
         }
         
         HStack{
            Image(systemName: "suitcase")
            Text("Willing to Relocate")
               .font(Fonts.medium13)
         }
      }
      .opacity(0.4)
   }
}

#Preview {
   DescriptionView()
}
