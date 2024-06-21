//
//  PortfolioTagView.swift
//  Wavern
//
//  Created by Paulus Michael on 20/06/24.
//

import SwiftUI

struct PortofolioTagView:View{
   var img:String
   
   var body : some View{
      VStack{
         Image(img)
      }.frame(width:42,height:42).background(LinearGradient(colors:[.primaryPurple,.secondaryPurple],startPoint:.top,endPoint:.bottom)).cornerRadius(180)
   }
}
