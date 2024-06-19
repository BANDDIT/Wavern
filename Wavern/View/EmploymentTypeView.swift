//
//  EmploymentTypeView.swift
//  Wavern
//
//  Created by Paulus Michael on 19/06/24.
//

import Foundation
import SwiftUI

struct EmploymentTypeView:View{
   enum employmentType{
      case full_time
      case part_time
   }
   
   var type:employmentType
   @State var text:String = ""
   @State var bgColor:Color = .clear
   @State var txtColor:Color = .clear
   
   var body : some View{
      VStack{
         Text(text)
            .font(.system(size:13,weight:.medium))
            .foregroundColor(txtColor)
            .frame(width:72,height:24).background(bgColor)
            .clipShape(CustomCorners(corners: [.topLeft, .bottomRight], radius: 12))
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
         }
      }
   }
}
