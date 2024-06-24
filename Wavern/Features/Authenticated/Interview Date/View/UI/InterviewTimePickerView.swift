//
//  InterviewTimePickerView.swift
//  Wavern
//
//  Created by Paulus Michael on 24/06/24.
//

import SwiftUI

struct InterviewTimePickerView:View{
   @Binding var time:Time
   @ObservedObject var interviewDateViewModel:InterviewDateViewModel
   
   var body : some View{
      HStack{
         Picker("", selection: $time.hour){
            ForEach(0...23,id:\.self){ i in
               if(interviewDateViewModel.isUnderTen(i)){
                  Text("0\(i)").tag(i)
               }
               else{
                  Text("\(i)").tag(i)
               }
            }
            
         }.pickerStyle(.wheel).frame(height:200)
         
         Picker("", selection: $time.minute){
            ForEach(0...59,id:\.self){ i in
               if(interviewDateViewModel.isUnderTen(i)){
                  Text("0\(i)").tag(i)
               }
               else{
                  Text("\(i)").tag(i)
               }                        }
         }.pickerStyle(.wheel).frame(height:200)
      }
   }
}

//#Preview {
//    InterviewTimePickerView()
//}
