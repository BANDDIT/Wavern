//
//  SuccessFeedbackView.swift
//  Wavern
//
//  Created by Paulus Michael on 21/06/24.
//

import SwiftUI

struct SuccessFeedbackView: View {
    var body: some View {
       HStack{
          HStack{
             Image(systemName:"checkmark.circle.fill").foregroundColor(Colors.white)
             
             Text("Request Successfully Sent")
                .foregroundColor(Colors.white)
                .font(Fonts.medium14)
                .padding(.horizontal)
          }
          .padding(.horizontal)
          Spacer()
       }
       .frame(maxWidth:.infinity, minHeight:Size.buttonHeight)
       .background(Colors.green600)
       .clipShape(RoundedRectangle(cornerRadius: Size.cornerRadius))
       .offset(y:260)
       .padding()
    }
}

#Preview {
    SuccessFeedbackView()
}
