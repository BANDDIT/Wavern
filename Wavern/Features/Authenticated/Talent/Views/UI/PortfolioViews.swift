//
//  PortfolioViews.swift
//  Wavern
//
//  Created by Paulus Michael on 24/06/24.
//

import SwiftUI

struct PortfolioViews: View {
   var img: String
   var url: URL
   var body: some View {
      VStack(alignment: .leading) {
         HStack{
            Link(destination: url, label: {
               Image(img)
                  .frame(width:42,height:42)
                  .background(
                     Background.bgGradient
                  )
                  .clipShape(Circle())
            })
         }
      }
   }
}

#Preview {
   PortfolioViews(img: "figma_logo", url: URL(string: "https://www.apple.com")!)
}
