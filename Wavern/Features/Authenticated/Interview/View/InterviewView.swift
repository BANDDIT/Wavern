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
    
    @StateObject var talentSingleton = TalentSingleton.shared
   
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
            
            // MARK: Nanti pake foreach/list
            //viewModel.screenView(model: model)
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
                 
                 ForEach(Array(talentSingleton.listTalentForInterview.enumerated()), id:\.offset){ index,talent in
                     /*
                     InterviewedListView(month: talent.month, date:talent.date, startTime:talent.startTime, endTime:talent.endTime, name:talent.name, job:talent.job, interviewedTalent: $talentSingleton.listInterviewedTalent).padding(.horizontal, Size.padding24)
                         .background(Colors.white)
                      */
                     /*
                     InterviewedListView(month: talent.month, date:talent.date, startTime:talent.startTime, endTime:talent.endTime, name:talent.name, job:talent.job,interviewedTalent: $talentSingleton.listTalentForInterview)
                      */
                     InterviewedListView(startTime:talentSingleton.startTimeForInterview[index],endTime:talentSingleton.endTimeForInterview[index],name:talent.User_Nama,job:talent.Role,interviewedTalent: $talentSingleton.listTalentForInterview).padding(.horizontal, Size.padding24)
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
