//
//  SuccessfulExchangeView.swift
//  Wavern
//
//  Created by Paulus Michael on 24/06/24.
//

import SwiftUI

struct SuccessfulExchangeView: View {
   var increments = [300, 500, 700, 900]
   
   var body: some View {
      VStack{
         VStack {
            Text("Successfully Exchanged 🎉")
               .font(Fonts.semibold32)
               .foregroundStyle(Colors.white)
         }
         .padding(.vertical, 120)
         .padding(.horizontal)
         
         Spacer()
         
         CustomButtons(text: "Back Home", bgColor: Colors.white, txtColor: Colors.purple600, height: 56, action: {})
            .padding(.horizontal)
            .padding(.bottom, 60)
      }
      .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
      .background(
         ZStack {
            Background.bgGradient
            
            ForEach(increments, id: \.self) { increment in
               Home()
                  .fill(
                     Background.bgHome
                  )
                  .frame(width: CGFloat(increment), height: CGFloat(increment))
                  .opacity(0.08)
            }
         }
      )
   }
}

#Preview {
   SuccessfulExchangeView()
}
