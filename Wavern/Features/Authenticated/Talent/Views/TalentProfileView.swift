//
//  TalentProfileView.swift
//  Wavern
//
//  Created by Paulus Michael on 22/06/24.
//

import SwiftUI

struct TalentProfileView: View {
   @Environment(\.dismiss) var dismiss
   
   var timer: Timer = Timer()
   
   @State var isInvited:Bool=false
   
   var body: some View {
      VStack{
         ZStack{
            HStack{
               Button(action:{
                  dismiss()
               },label:{
                  Image(systemName:"arrow.backward")
                     .foregroundStyle(.white)
               })
            }
            .padding(.vertical, 60)
            .padding(.horizontal)
            .zIndex(1)
            
            Image("DummyTalentsProfile")
         }
         
      }
      .background(Colors.neutral100)
      .ignoresSafeArea()
   }
}

#Preview {
   TalentProfileView()
}
