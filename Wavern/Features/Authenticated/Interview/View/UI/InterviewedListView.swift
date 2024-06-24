//
//  InterviewedListView.swift
//  Wavern
//
//  Created by Paulus Michael on 20/06/24.
//

import SwiftUI

struct InterviewedListView: View {
   var body: some View {
      VStack {
         HStack{
            Text("Automatically Reject In:")
               .font(Fonts.medium14)
               .foregroundStyle(Colors.red600)
            
            Spacer()
            
            Text("2 Weeks")
               .font(Fonts.medium14)
               .foregroundStyle(Colors.red600)
         }
         .padding()
         .background(Colors.red100)
         .clipShape(RoundedRectangle(cornerRadius: 12))
         
         StatusView(circleColor: Colors.green600)
         
         HStack{
            CustomButtons(text: "Reject", bgColor: Colors.red600, txtColor: Colors.white, height: 40, action: {})
            CustomButtons(text: "Accept", bgColor: Colors.green600, txtColor: Colors.white, height: 40, action: {})
         }
      }
      .frame(maxWidth: .infinity)
      .padding(.vertical)
   }
}

#Preview {
   InterviewedListView()
}
