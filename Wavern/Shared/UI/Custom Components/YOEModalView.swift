//
//  YOEModalView.swift
//  Wavern
//
//  Created by Paulus Michael on 24/06/24.
//

import SwiftUI

struct YOEModalView: View {
   @State var yoe: String = ""
   
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
      }
      .padding()
      .frame(width: UIScreen.main.bounds.width, alignment: .leading)
   }
}

#Preview {
   YOEModalView()
}
