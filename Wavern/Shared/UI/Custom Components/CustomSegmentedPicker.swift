//
//  CustomSegmentedPicker.swift
//  Wavern
//
//  Created by Paulus Michael on 23/06/24.
//

import SwiftUI

struct CustomSegmentedPicker: View {
   @Binding var selectedCategory: Int
   let categories = ["Waiting for Interview", "Interviewed"]
   
   var body: some View {
      HStack {
         ForEach(0..<categories.count, id: \.self) { index in
            Button(action: {
               selectedCategory = index
            }) {
               Text(categories[index])
                  .padding(.vertical)
                  .foregroundStyle(selectedCategory == index ? Colors.white : Colors.neutral500)
                  .frame(maxWidth: .infinity)
                  .background(selectedCategory == index ? Colors.purple600 : Color.clear)
                  .font(Fonts.medium13)
                  .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding(4)
         }
      }
      .background(Colors.neutral100)
      .clipShape(RoundedRectangle(cornerRadius: 12))
   }
}

#Preview {
   CustomSegmentedPicker(selectedCategory: .constant(0))
}
