//
//  InterviewSchedule.swift
//  Wavern
//
//  Created by Paulus Michael on 24/06/24.
//

import SwiftUI

struct InterviewSchedule:View{
   @ObservedObject var interviewDateViewModel:InterviewDateViewModel
   var body : some View{
      VStack{
         Spacer()
         InterviewScheduleSection(txt:"From",time:$interviewDateViewModel.time, interviewDateViewModel: interviewDateViewModel).frame(width:345,height:40)
         
         
         if(interviewDateViewModel.beginTime){
            Spacer()
            InterviewTimePickerView(time:$interviewDateViewModel.time, interviewDateViewModel: interviewDateViewModel)
         }
         Spacer()
         
         VStack{
            Text("")
         }.frame(width:345,height:1.02).background(.neutral300)
         
         Spacer()
         
         InterviewScheduleSection(txt:"To",time:$interviewDateViewModel.time2, interviewDateViewModel: interviewDateViewModel).frame(width:345,height:40)
         
         if(interviewDateViewModel.endTime){
            Spacer()
            InterviewTimePickerView(time:$interviewDateViewModel.time2,interviewDateViewModel: interviewDateViewModel)
         }
         
         Spacer()
      }
   }
}

#Preview {
   InterviewSchedule(interviewDateViewModel: InterviewDateViewModel())
}
