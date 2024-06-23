//
//  InterviewViewModel.swift
//  Wavern
//
//  Created by Paulus Michael on 23/06/24.
//

import SwiftUI

struct InterviewViewModel {
   func screenView(model: InterviewModel) -> some View{
      if model.selectedCategory == 0{
         return AnyView(
            StatusView(circleColor: Colors.red600)
               .padding(.horizontal, Size.padding24)
               .background(Colors.white)
         )
      }else{
         return AnyView(
            InterviewedListView()
               .padding(.horizontal, Size.padding24)
               .background(Colors.white)
         )
      }
   }
}
