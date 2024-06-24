//
//  PortfolioViews.swift
//  Wavern
//
//  Created by Paulus Michael on 24/06/24.
//

import SwiftUI

struct PortfolioViews: View {
   var body: some View {
      VStack(alignment: .leading) {
         Text("Portfolio Links")
            .font(Fonts.semibold16)
            .padding(.vertical)
         
         HStack{
            CustomPortofolioTag(img: "figma_logo")
            CustomPortofolioTag(img: "figma_logo")
            CustomPortofolioTag(img: "figma_logo")
            CustomPortofolioTag(img: "figma_logo")
         }
      }
   }
}

#Preview {
   PortfolioViews()
}
