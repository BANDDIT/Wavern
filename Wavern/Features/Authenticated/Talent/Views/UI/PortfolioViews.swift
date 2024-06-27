//
//  PortfolioViews.swift
//  Wavern
//
//  Created by Paulus Michael on 24/06/24.
//

import SwiftUI

struct PortfolioViews: View {
   var img: String
   var url: String
   var body: some View {
      VStack(alignment: .leading) {
         HStack{
            Link(destination: URL(string: url)!, label: {
                
                if(img=="github"){
                    VStack{
                        Image(img).padding(.top,6).padding(.trailing,1)

                    }.frame(width:42,height:42)
                        .background(
                           Background.bgGradient
                        )
                        .clipShape(Circle())
                }
                else{
                    VStack{
                        Image(img)

                    }.frame(width:42,height:42)
                        .background(
                           Background.bgGradient
                        )
                        .clipShape(Circle())
                }
                  
            })
         }
      }
   }
}

#Preview {
   PortfolioViews(img: "figma_logo", url: "https://www.apple.com")
}
