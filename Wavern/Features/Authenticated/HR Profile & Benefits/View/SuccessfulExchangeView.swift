//
//  SuccessfulExchangeView.swift
//  Wavern
//
//  Created by Paulus Michael on 24/06/24.
//

import SwiftUI

struct SuccessfulExchangeView: View {
   var increments = [300, 500, 700, 900]
   @Environment(\.dismiss) var dismiss
   @Binding var isShow: Bool
   
   var body: some View {
      VStack(alignment: .center){
         VStack(alignment: .center) {
            Text("Successfully Exchanged 🎉")
               .font(Fonts.semibold32)
               .foregroundStyle(Colors.white)
            
            Spacer()
            
            Image("coin_min")
               .resizable()
               .frame(width: 180, height: 180)
            
            Spacer()
            
            Text("Human Resource Associate")
               .font(Fonts.semibold32)
               .foregroundStyle(Colors.white)
               .multilineTextAlignment(.center)
            
            Text("- 100 Points")
               .padding(.horizontal)
               .padding(.vertical, 8)
               .background(.white.opacity(0.2))
               .clipShape(RoundedRectangle(cornerRadius: 25))
               .font(Fonts.medium16)
               .foregroundStyle(.white)
         }
         .padding(.vertical, 120)
         .padding(.horizontal)
         
         
         CustomButtons(text: "Back Home", bgColor: Colors.white, txtColor: Colors.purple600, height: 56, action: {
            isShow = false
         })
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
   SuccessfulExchangeView(isShow: .constant(false))
}
