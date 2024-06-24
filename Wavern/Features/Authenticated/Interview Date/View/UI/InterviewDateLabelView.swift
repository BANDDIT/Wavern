//
//  InterviewDateLabelView.swift
//  Wavern
//
//  Created by Paulus Michael on 24/06/24.
//

import SwiftUI

struct InterviewDateLabelView:View{
   var body : some View{
      HStack{
         Image(systemName:"arrow.backward").foregroundColor(.gray).font(.system(size:17,weight:.regular))
         Text(" ")
         Text("Invite to Interview").foregroundColor(.neutral600).font(.system(size:17,weight:.semibold))
      }
   }
}

#Preview {
   InterviewDateLabelView()
}
