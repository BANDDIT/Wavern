//
//  InterviewedListView.swift
//  Wavern
//
//  Created by Paulus Michael on 20/06/24.
//

import SwiftUI

struct InterviewedListView: View {
   
   var circleColor: Color = Colors.green600
   
   var month:String="JUN"
   var date:String="22"
   
   var startTime:Time = Time(10,0)
   var endTime:Time = Time(10,30)
   
   var name:String="Maria Antonia"
   var job:String="UI/UX Designer"
   
   @Binding var interviewedTalent:[Talent] //= TalentSingleton.shared.listInterviewedTalent
   
   //@State var interviewedTalent:[Talent] = TalentSingleton.shared.listTalent
   @StateObject var talentSingleton = TalentSingleton.shared
   @State private var showConfirmationAlert = false
   @State private var actionType: ActionType?
   
   enum ActionType {
      case accept
      case reject
   }
   
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
         
         StatusView(
            circleColor:Colors.green600,
            month:month,
            date:date,
            startTime:startTime,
            endTime:endTime,
            name:name, job:job)
         .padding(.horizontal, Size.padding24)
         .background(Colors.white)
         
         HStack{
            CustomButtons(text: "Reject", bgColor: Colors.red600, txtColor: Colors.white, height: 40, action: {
               actionType = .reject
               showConfirmationAlert = true
            })
            
            CustomButtons(text: "Accept", bgColor: Colors.green600, txtColor: Colors.white, height: 40, action: {
               actionType = .accept
               showConfirmationAlert = true
            })
            
         }
      }
      .frame(maxWidth: .infinity)
      .padding(.vertical)
      .alert(isPresented: $showConfirmationAlert) {
         Alert(
            title: Text("\(actionType == .accept ? "Accept this Talent?" : "Reject this Talent?")"),
            message: Text("\(actionType == .accept ? "Make sure you've chosen the right talent!" : "Make sure you're sure with your decision!")"),
            primaryButton: .default(Text("Yes"), action: {
               if actionType == .accept {
                  acceptTalent()
               } else if actionType == .reject {
                  rejectTalent()
               }
            }),
            secondaryButton: .cancel()
         )
      }
   }
   
   private func acceptTalent() {
      var index = -1
      for talent in talentSingleton.listTalentForInterview {
         index = index + 1
         if (talent.User_Nama == self.name) {
            talentSingleton.acceptedTalent.append(talent)
         }
      }
      
      index = -1
      for talent in interviewedTalent {
         index = index + 1
         if (talent.User_Nama == self.name) {
            talentSingleton.listTalentForInterview.remove(at: index)
            talentSingleton.startTimeForInterview.remove(at: index)
            talentSingleton.endTimeForInterview.remove(at: index)
            talentSingleton.dateForInterview.remove(at: index)
            break
         }
      }
   }
   
   private func rejectTalent() {
      var index = -1
      for talent in interviewedTalent {
         index = index + 1
         if (talent.User_Nama == self.name) {
            talentSingleton.listTalentForInterview.remove(at: index)
            talentSingleton.startTimeForInterview.remove(at: index)
            talentSingleton.endTimeForInterview.remove(at: index)
            talentSingleton.dateForInterview.remove(at: index)
            break
         }
      }
   }
}



/*
 #Preview {
 InterviewedListView()
 }
 */
