//
//  TellUsMoreView.swift
//  Wavern
//
//  Created by Paulus Michael on 24/06/24.
//

import SwiftUI

struct TellUsMoreView:View{
   @ObservedObject var interviewDateViewModel:InterviewDateViewModel
   
   var body : some View{
      VStack(alignment:.leading){
         Spacer()
         Text("Tell us more of your needs").foregroundColor(.neutral600).font(.system(size:14,weight:.semibold))
         Spacer()
         
         ZStack{
            ZStack(alignment:.topLeading){
               TextEditor(text:$interviewDateViewModel.tellUsMore).padding(4).foregroundColor(.black).font(.system(size:14,weight:.regular)).colorMultiply(.neutral).onChange(of:interviewDateViewModel.tellUsMore){
                  if(interviewDateViewModel.isInputEmpty()){
                     interviewDateViewModel.tellUs=true
                  }
               }.onTapGesture{
                  interviewDateViewModel.tellUs=false
               }
               
               if(interviewDateViewModel.isNotTyping()){
                  Text("Type Here").foregroundColor(.neutral400).font(.system(size:14,weight:.regular)).padding(.horizontal,8)      .padding(.vertical, 12)
               }
            }.frame(width:343,height:147).background(.neutral).cornerRadius(12)
         }.frame(width:345,height:149).background(.neutral400).cornerRadius(12)
         
         Spacer()
      }
   }
}

//#Preview {
//    TellUsMoreView()
//}
