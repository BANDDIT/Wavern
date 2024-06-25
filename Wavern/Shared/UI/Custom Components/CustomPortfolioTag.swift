//
//  PortfolioTagView.swift
//  Wavern
//
//  Created by Paulus Michael on 20/06/24.
//

import SwiftUI

struct CustomPortofolioTag:View{
   var img:String
//    @Environment(ModelData.self) private var modelData
//    var portofolio: TalentPortofolio

   var body : some View{
      Button(action: {}, label: {
         Image(img)
            .frame(width:42,height:42)
            .background(
               LinearGradient(
                  colors:[.primaryPurple,.secondaryPurple],
                  startPoint:.top,
                  endPoint:.bottom)
            )
            .clipShape(Circle())
      })
   }
}

#Preview{
    CustomPortofolioTag(img: "figma")
}
