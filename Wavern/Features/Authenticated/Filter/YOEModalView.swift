//
//  YOEModalView.swift
//  Wavern
//
//  Created by Paulus Michael on 24/06/24.
//

import SwiftUI

struct YOEModalView: View {
   @Binding var yoe: String
   @Environment(\.dismiss) var dismiss
   
   var body: some View {
      VStack(alignment: .leading) {
         Text("Years of Experience")
            .font(Fonts.semibold20)
         TextField(text: $yoe) {
            Text("Input")
               .font(Fonts.regular13)
         }
         .padding()
         .background(Colors.neutral100)
         .clipShape(RoundedRectangle(cornerRadius: 12))
         .padding(.vertical)
         
         CustomButtons(text: "Save", bgColor: Colors.purple600, txtColor: Colors.white, height: 44, action: {
            dismiss()
         })
      }
      .padding()
      .frame(width: UIScreen.main.bounds.width, alignment: .leading)
   }
}


#Preview {
   YOEModalView(yoe: .constant(""))
}
