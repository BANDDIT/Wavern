//
//  Buttons.swift
//  Wavern
//
//  Created by Paulus Michael on 21/06/24.
//

import SwiftUI

struct CustomButtons: View {
   var text: String
   var bgColor: Color
   var txtColor: Color
   var height: CGFloat
   var action: () -> Void
   
   var body: some View {
      VStack{
         Button(action:{
            action()
         },label:{
            VStack{
               Text(text)
                  .foregroundStyle(txtColor)
                  .frame(maxWidth: .infinity, minHeight: height)
                  .background(bgColor)
                  .clipShape(RoundedRectangle(cornerRadius: Size.cornerRadius))
                  .font(Fonts.semibold16)
            }
         })
      }
   }
}

#Preview{
   CustomButtons(text: "Invite to Interview", bgColor: Colors.purple600, txtColor: Colors.white, height: 24, action: {})
}
