//
//  InterviewView.swift
//  Wavern
//
//  Created by Paulus Michael on 20/06/24.
//

import SwiftUI

struct InterviewView: View {
   @StateObject var model = InterviewModel()
   var viewModel = InterviewViewModel()
    
    
    /*
    @State var talentSingleton:[Talent] = TalentSingleton.shared.listTalent
    @State var startTimeSingleton:[Time] = TalentSingleton.shared.listStartTime
    @State var endTimeSingleton:[Time] = TalentSingleton.shared.listEndTime
    @State var dateSingleton:[Date] = TalentSingleton.shared.listDate
    @State var interviewedTalent:[InterviewedTalent] = TalentSingleton.shared.listInterviewedTalent

    
    
    @State var listTalent:[Talent]=TalentSingleton.shared.listTalent
    
     @State var acceptedTalent:[Talent] = TalentSingleton.shared.acceptedTalent
     @State var acceptedTalentSkill:[TalentSkill] = TalentSingleton.shared.acceptedTalentSkill

     @State var talentSkill:[TalentSkill] = TalentSingleton.shared.listTalentSkill
    
    @State var testing:String = TalentSingleton.shared.testing
    @State var testString:String = TalentSingleton.staticTesting
    */
    
    @StateObject var talentSingleton = TalentSingleton.shared
    @State var index:Int = -1

   var body: some View {
      ScrollView {
         VStack(alignment: .leading, spacing: 4){
            VStack {
               Text("Interview")
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .font(Fonts.semibold20)
                  .foregroundStyle(.neutral600)
                  .padding(.horizontal, Size.padding24)
                  .padding(.vertical)
               
               Divider()
               
               VStack {
                  CustomSegmentedPicker(selectedCategory: $model.selectedCategory)
               }
               .padding(.vertical, 12)
               .padding(.horizontal, Size.padding24)
            }
            .background(.white)
            //Calendar.current  let components = calendar.dateComponents([.month], from: date)
            //viewModel.screenView(model: model)
             //StatusView(circleColor:Colors.red600)
             
             if model.selectedCategory == 0 {
                 StatusView(circleColor:Colors.red600).padding(.horizontal, Size.padding24)
                     .background(Colors.white)
                 ForEach(Array(talentSingleton.listTalent.enumerated()), id:\.offset){ index,talent in
                     StatusView(
                        circleColor:Colors.red600,
                        month: viewModel.formatDateToMonthString(TalentSingleton.shared.listDate[index]),
                        date: viewModel.formatDateToDayString(TalentSingleton.shared.listDate[index]),
                        startTime:talentSingleton.listStartTime[index],
                        endTime:talentSingleton.listEndTime[index],
                        name:talent.User_Nama, job:talent.Role)
                        .padding(.horizontal, Size.padding24)
                        .background(Colors.white)
                 }
             }
             else{
                 ForEach(Array(talentSingleton.listInterviewedTalent.enumerated()), id:\.offset){ index,talent in
                     InterviewedListView(month: talent.month, date:talent.date, startTime:talent.startTime, endTime:talent.endTime, name:talent.name, job:talent.job, interviewedTalent: $talentSingleton.listInterviewedTalent).padding(.horizontal, Size.padding24)
                         .background(Colors.white)
                 }
             }
             
              
         }
      }
      .background(Colors.neutral100)
      .padding(.top, 60)
      .ignoresSafeArea()

   }
}

#Preview {
   InterviewView()
}
