//
//  CustomNavigationLink.swift
//  Wavern
//
//  Created by Paulus Michael on 21/06/24.
//

import SwiftUI

struct CustomNavigationLink: View {
   var bgColor: Color
   var txtColor: Color
   var text: String
   
    var body: some View {
       Text(text)
          .frame(maxWidth: .infinity)
          .font(Fonts.semibold16)
          .fontWeight(.semibold)
          .padding()
          .background(bgColor)
          .foregroundStyle(txtColor)
          .clipShape(RoundedRectangle(cornerRadius: Size.cornerRadius))
    }
}

#Preview {
   CustomNavigationLink(bgColor: Colors.purple600, txtColor: Colors.white, text: "I already have an account")
}
