//
//  TalentViewModel.swift
//  Wavern
//
//  Created by Paulus Michael on 23/06/24.
//

import SwiftUI

struct TalentViewModel {
   func feedbackPopUp(isInvited: Binding<Bool>){
      isInvited.wrappedValue = true
      
      DispatchQueue.main.asyncAfter(deadline: .now() + 3){
         isInvited.wrappedValue = false
      }
   }
}
