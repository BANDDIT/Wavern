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
    
    @Binding var interviewedTalent:[InterviewedTalent] //= TalentSingleton.shared.listInterviewedTalent
    
    /*
    @State var listTalent:[Talent]=TalentSingleton.shared.listTalent
    
     @State var acceptedTalent:[Talent] = TalentSingleton.shared.acceptedTalent
     @State var acceptedTalentSkill:[TalentSkill] = TalentSingleton.shared.acceptedTalentSkill

     @State var talentSingleton:[Talent] = TalentSingleton.shared.listTalentForInterview
     @State var talentSkill:[TalentSkill] = TalentSingleton.shared.listTalentSkill
    
    @State var testing:String = TalentSingleton.shared.testing
 */

    
    @StateObject var talentSingleton = TalentSingleton.shared
    
    public func ifAccepted(){
        /*
        TalentSingleton.shared.listTalent.append(Talent(User_Nama: "Jesslyn Devaline Masuk", User_Email: "jesslyndevaline@gmail.com", User_Password: "jesslyndevaline", User_Description: "Jesslyn Devaline", Role: "Product Designer", Experience: 3, Offering: 5000000, Willing_To_relocate: "Relocate", Interview_Count: 5))
        talentSingleton = TalentSingleton.shared.listTalent
        
        TalentSingleton.shared.testing = "BERHASIL"
        testing = TalentSingleton.shared.testing 
        
        
        print("ifAccepted Jalan")
        
        var index = -1
        for talent in talentSingleton{
            index = index + 1
            
            if(talent.User_Nama == self.name){
                //TalentSingleton.shared.acceptedTalent.append(talent)
                TalentSingleton.shared.appendAcceptedTalent(talent: talent)
                acceptedTalent = TalentSingleton.shared.acceptedTalent

                //TalentSingleton.shared.acceptedTalentSkill.append(talentSkill[index])
                TalentSingleton.shared.appendAcceptedTalentSkill(talentSkill: talentSkill[index])
                acceptedTalentSkill = TalentSingleton.shared.acceptedTalentSkill

                break
            }
             
        }

        
        
        index = -1
        for talent in interviewedTalent{
            index = index + 1
            if(talent.name == self.name){
                
                TalentSingleton.shared.listInterviewedTalent.remove(at:index)
                interviewedTalent = TalentSingleton.shared.listInterviewedTalent

                TalentSingleton.shared.listTalentForInterview.remove(at:index)
                talentSingleton = TalentSingleton.shared.listTalentForInterview
                
                TalentSingleton.shared.listTalentSkill.remove(at:index)
                talentSkill = TalentSingleton.shared.listTalentSkill
                
                break
            }
        }
         */
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
                var index = -1
                for talent in interviewedTalent{
                    index = index + 1
                    if(talent.name == self.name){
                        TalentSingleton.shared.listInterviewedTalent.remove(at:index)
                        interviewedTalent = TalentSingleton.shared.listInterviewedTalent
                    }
                    break
                }
                
            })
            CustomButtons(text: "Accept", bgColor: Colors.green600, txtColor: Colors.white, height: 40, action: {
                //ifAccepted()
                //Isi If Accepted
                /*
                TalentSingleton.shared.listTalent.append(Talent(User_Nama: "Jesslyn Devaline Masuk", User_Email: "jesslyndevaline@gmail.com", User_Password: "jesslyndevaline", User_Description: "Jesslyn Devaline", Role: "Product Designer", Experience: 3, Offering: 5000000, Willing_To_relocate: "Relocate", Interview_Count: 5))
                talentSingleton = TalentSingleton.shared.listTalent
                */
                //print(talentSingleton.listTalent)
                var index = -1
                for talent in talentSingleton.listTalentForInterview{
                    index = index + 1
                    if(talent.User_Nama == self.name){
                        //TalentSingleton.shared.acceptedTalent.append(talent)
                        /*
                        TalentSingleton.shared.appendAcceptedTalent(talent: talent)
                        acceptedTalent = TalentSingleton.shared.acceptedTalent

                        //TalentSingleton.shared.acceptedTalentSkill.append(talentSkill[index])
                        TalentSingleton.shared.appendAcceptedTalentSkill(talentSkill: talentSkill[index])
                        acceptedTalentSkill = TalentSingleton.shared.acceptedTalentSkill

                        break
                         */
                        talentSingleton.acceptedTalent.append(talent)
                        talentSingleton.acceptedTalentSkill.append(talentSingleton.listTalentSkill[index])
                    }
                     
                }
                
                

                //talentSingleton.acceptedTalent.append(Talent(User_Nama: "Jesslyn Devaline Masuk", User_Email: "jesslyndevaline@gmail.com", User_Password: "jesslyndevaline", User_Description: "Jesslyn Devaline", Role: "Product Designer", Experience: 3, Offering: 5000000, Willing_To_relocate: "Relocate", Interview_Count: 5))
                
                index = -1
                for talent in interviewedTalent{
                    index = index + 1
                    if(talent.name == self.name){
                        
                        talentSingleton.listInterviewedTalent.remove(at:index)
                        //interviewedTalent = TalentSingleton.shared.listInterviewedTalent

                        talentSingleton.listTalentForInterview.remove(at:index)
                        //talentSingleton = TalentSingleton.shared.listTalentForInterview
                        
                        TalentSingleton.shared.listTalentSkill.remove(at:index)
                        //talentSkill = TalentSingleton.shared.listTalentSkill
                        
                        break
                    }
                }
                
                
                
                
                
                //TalentSingleton.shared.acceptedTalent.append(InterviewedTalent(name: name, job: job, startTime: startTime, endTime: endTime, month: month, date: date))
                //acceptedTalent = TalentSingleton.shared.acceptedTalent
                /*
                TalentSingleton.shared.listTalent.append(Talent(User_Nama: "Jesslyn Devaline", User_Email: "jesslyndevaline@gmail.com", User_Password: "jesslyndevaline", User_Description: "Jesslyn Devaline", Role: "Product Designer", Experience: 3, Offering: 5000000, Willing_To_relocate: "Relocate", Interview_Count: 5))
                talentSingleton = TalentSingleton.shared.listTalent
                
                var index = -1
                for talent in talentSingleton{
                    index = index + 1
                    
                    if(talent.User_Nama == self.name){
                        //TalentSingleton.shared.acceptedTalent.append(talent)
                        TalentSingleton.shared.appendAcceptedTalent(talent: talent)
                        acceptedTalent = TalentSingleton.shared.acceptedTalent

                        //TalentSingleton.shared.acceptedTalentSkill.append(talentSkill[index])
                        TalentSingleton.shared.appendAcceptedTalentSkill(talentSkill: talentSkill[index])
                        acceptedTalentSkill = TalentSingleton.shared.acceptedTalentSkill

                        break
                    }
                     
                }
   
                
                
                index = -1
                for talent in interviewedTalent{
                    index = index + 1
                    if(talent.name == self.name){
                        
                        TalentSingleton.shared.listInterviewedTalent.remove(at:index)
                        interviewedTalent = TalentSingleton.shared.listInterviewedTalent

                        TalentSingleton.shared.listTalentForInterview.remove(at:index)
                        talentSingleton = TalentSingleton.shared.listTalentForInterview
                        
                        TalentSingleton.shared.listTalentSkill.remove(at:index)
                        talentSkill = TalentSingleton.shared.listTalentSkill
                        
                        break
                    }
                }
                */
            }).onAppear{
                //print("Masuk Tombol Accepted")
                ifAccepted()
            }
             
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
