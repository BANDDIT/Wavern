//
//  InterviewedListView.swift
//  Wavern
//
//  Created by Paulus Michael on 20/06/24.
//

import SwiftUI
/*
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
*/

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
                var index = -1
                for talent in interviewedTalent{
                    index = index + 1
                    if(talent.User_Nama == self.name){
                        talentSingleton.listTalentForInterview.remove(at:index)
                        talentSingleton.startTimeForInterview.remove(at:index)
                        talentSingleton.endTimeForInterview.remove(at:index)
                        talentSingleton.dateForInterview.remove(at:index)
                        break
                        //interviewedTalent = TalentSingleton.shared.listInterviewedTalent
                    }
                }
                
            })
            CustomButtons(text: "Accept", bgColor: Colors.green600, txtColor: Colors.white, height: 40, action: {
   
                //print(talentSingleton.listTalent)
                var index = -1
                for talent in talentSingleton.listTalentForInterview{
                    index = index + 1
                    if(talent.User_Nama == self.name){
                        talentSingleton.acceptedTalent.append(talent)
                        //talentSingleton.acceptedDate.append(talentSingleton.listDate[index])
                        //talentSingleton.acceptedStartTime.append(talentSingleton.listStartTime[index])
                        //talentSingleton.acceptedEndTime.append(talentSingleton.listEndTime[index])


                        //talentSingleton.acceptedTalentSkill.append(talentSingleton.listTalentSkill[index])
                    }
                     
                }
                
                index = -1
                for talent in interviewedTalent{
                    index = index + 1
                    if(talent.User_Nama == self.name){
                        /*
                        talentSingleton.listTalent.remove(at:index)
                        talentSingleton.listDate.remove(at:index)
                        talentSingleton.listStartTime.remove(at:index)
                        talentSingleton.listEndTime.remove(at:index)       
                        */
                        talentSingleton.listTalentForInterview.remove(at:index)
                        talentSingleton.startTimeForInterview.remove(at:index)
                        talentSingleton.endTimeForInterview.remove(at:index)
                        talentSingleton.dateForInterview.remove(at:index)
                        break
                    }
                }
                
            })
             
         }
      }
      .frame(maxWidth: .infinity)
      .padding(.vertical)
   }
}

/*
#Preview {
   InterviewedListView()
}
*/
