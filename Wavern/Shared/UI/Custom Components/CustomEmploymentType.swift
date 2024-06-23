//
//  EmploymentTypeView.swift
//  Wavern
//
//  Created by Paulus Michael on 19/06/24.
//

import Foundation
import SwiftUI

struct CustomEmploymentType:View{
   let corners: UIRectCorner
   
   enum employmentType{
      case full_time
      case part_time
      case freelance
   }
   
   var type: employmentType
   @State var text:String = ""
   @State var bgColor:Color = .clear
   @State var txtColor:Color = .clear
   
   var body : some View{
      VStack{
         Text(text)
            .font(Fonts.medium10)
            .foregroundColor(txtColor)
            .padding(.horizontal)
            .frame(height:24)
            .background(bgColor)
            .clipShape(CustomCorners(corners: corners, radius: 12))
      }
      .onAppear{
         switch(type){
         case .full_time:
            text="Full-time"
            bgColor = .success100
            txtColor = .success600
            
         case .part_time:
            text="Part-time"
            bgColor = .info100
            txtColor = .info600
            
         case .freelance:
            text = "Freelance"
            bgColor = .error100
            txtColor = .error600
         }
      }
   }
}
