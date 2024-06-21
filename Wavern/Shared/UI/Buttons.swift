//
//  Buttons.swift
//  Wavern
//
//  Created by Paulus Michael on 21/06/24.
//

import SwiftUI

struct Buttons: View {
   var text: String
   var bgColor: Color
   var txtColor: Color
   
   var body: some View {
      VStack{
         Button(action:{

         },label:{
            VStack{
               Text(text)
                  .foregroundStyle(txtColor)
                  .frame(maxWidth: .infinity, minHeight: Size.buttonHeight)
                  .background(bgColor)
                  .clipShape(RoundedRectangle(cornerRadius: Size.cornerRadius))
                  .font(Fonts.semibold16)
            }
            .padding(.horizontal)
         })
      }
   }
}

#Preview{
   Buttons(text: "Invite to Interview", bgColor: Colors.purple600, txtColor: Colors.white)
}
