//
//  TimeBoxView.swift
//  Wavern
//
//  Created by Paulus Michael on 24/06/24.
//

import SwiftUI

struct TimeBoxView:View{
   var time:Time
   var color:Color
   
   @ObservedObject var interviewDateViewModel:InterviewDateViewModel
   
   var body : some View{
      VStack{
         Text("\(interviewDateViewModel.getHour(time)) : \(interviewDateViewModel.getMinute(time))").foregroundColor(color).font(.system(size:18,weight:.semibold))
      }
   }
}

