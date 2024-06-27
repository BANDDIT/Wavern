//
//  PointNavigationLink.swift
//  Wavern
//
//  Created by Paulus Michael on 23/06/24.
//

import SwiftUI

struct PointNavigationLink: View {
   
   var body: some View {
      HStack{
         HStack {
            Image("sparkle")
               .resizable()
               .frame(width: 20, height: 20)
            
            Text("Bronze")
               .font(Fonts.semibold13)
         }
         
         Spacer()
         
         Text("100 Points")
            .font(Fonts.semibold13)
      }
      .foregroundStyle(.white)
      .padding()
      .background(.white.opacity(0.15))
      .clipShape(RoundedRectangle(cornerRadius: 12))
      .padding(.vertical)
   }
}

#Preview {
   PointNavigationLink()
      .background(.black)
}
