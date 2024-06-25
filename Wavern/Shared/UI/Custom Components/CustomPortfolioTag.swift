//
//  PortfolioTagView.swift
//  Wavern
//
//  Created by Paulus Michael on 20/06/24.
//

import SwiftUI

struct CustomPortofolioTag:View{
   var img:String
    @Environment(ModelData.self) private var modelData
    var portofolio: TalentPortofolio

   
   var body : some View{
      Button(action: {
          Link(destination: /*@START_MENU_TOKEN@*/URL(string: "https://www.apple.com")!/*@END_MENU_TOKEN@*/, label: {
              /*@START_MENU_TOKEN@*/Text("Link")/*@END_MENU_TOKEN@*/
          })
      }, label: {
         Image(img)
            .frame(width:42,height:42)
            .background(
               LinearGradient(
                  colors:[.primaryPurple,.secondaryPurple],
                  startPoint:.top,
                  endPoint:.bottom)
            ).clipShape(Circle())
      })
   }
}

#Preview{
    CustomPortofolioTag(img: "figma", portofolio: <#TalentPortofolio#>)
}
