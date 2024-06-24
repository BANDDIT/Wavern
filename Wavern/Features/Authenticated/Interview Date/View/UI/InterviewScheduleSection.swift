//
//  InterviewScheduleSection.swift
//  Wavern
//
//  Created by Paulus Michael on 24/06/24.
//

import SwiftUI

struct InterviewScheduleSection:View{
   var txt:String
   @Binding var time:Time
   @ObservedObject var interviewDateViewModel:InterviewDateViewModel
   
   var body : some View{
      HStack{
         Text("\(txt)").foregroundColor(.neutral500).font(.system(size:16,weight:.medium))
         Spacer()
         Button(action:{
            withAnimation{
               if (interviewDateViewModel.isTextEqualsFrom(txt)){
                  interviewDateViewModel.toggleBeginTime()
               }
               else{
                  interviewDateViewModel.toggleEndTime()
               }
            }
         },label:{
            if interviewDateViewModel.isTextEqualsFrom(txt){
               TimeBoxView(time:time,color:interviewDateViewModel.timeColor,interviewDateViewModel: interviewDateViewModel).frame(width:109,height:40).background(.neutral).cornerRadius(4)
            }
            else{
               TimeBoxView(time:time,color:interviewDateViewModel.time2Color,interviewDateViewModel: interviewDateViewModel).frame(width:109,height:40).background(.neutral).cornerRadius(4)
            }
            
            
         })
      }
   }
}

//#Preview {
//    InterviewScheduleSection()
//}
