//
//  InterviewDateView.swift
//  Wavern
//
//  Created by Paulus Michael on 24/06/24.
//

import SwiftUI

struct InterviewDateView: View {
   @Environment(\.dismiss) private var dismiss
   @StateObject private var interviewDateViewModel = InterviewDateViewModel()
   @Binding var path: NavigationPath
   @Binding var progress: Double
   
   @Binding var talent: Talent?
   
   @EnvironmentObject var user: UserModel
   @StateObject var talentSingleton = TalentSingleton.shared
   
   var body: some View {
      VStack(spacing: 5) {
         HStack {
            Button(action: {
               dismiss()
            }, label: {
               InterviewDateLabelView()
            }).padding([.leading, .top], 24)
            Spacer()
         }
         .padding(.top, 60)
         .padding(.bottom)
         
         Divider()
         
         ScrollView {
            VStack(spacing: 7) {
               DatePicker("", selection: $interviewDateViewModel.date, displayedComponents: .date)
                  .datePickerStyle(.graphical)
                  .accentColor(.primaryPurple)
                  .background(.white)
               
               Rectangle()
                  .frame(maxWidth: .infinity, maxHeight: 4)
                  .foregroundStyle(Colors.neutral100)
               
               InterviewSchedule(interviewDateViewModel: interviewDateViewModel)
                  .background(.white)
                  .padding(.vertical, 8)
               
               Rectangle()
                  .frame(maxWidth: .infinity, maxHeight: 4)
                  .foregroundStyle(Colors.neutral100)
               
               TellUsMoreView(interviewDateViewModel: interviewDateViewModel)
                  .frame(height: 231)
                  .background(.white)
            }
         }
         
         VStack {
            CustomButtons(text: "Send Request", bgColor: Colors.purple600, txtColor: Colors.white, height: 56, action: {
               withAnimation {
                  //                  if progress < 1.0 {
                  talentSingleton.listTalent.append(talent!)
                  
                  talentSingleton.listDate.append(interviewDateViewModel.date)
                  talentSingleton.listStartTime.append(interviewDateViewModel.time)
                  talentSingleton.listEndTime.append(interviewDateViewModel.time2)
                  
                  path.append(Destination.completedChallengeView)
                  progress += 0.5
                  user.points += 100
                  user.isChallengeCompleted = true
                  //                  }
               }
            })
            .padding(16)
            Spacer()
         }.frame(height: 128).background(.white)
      }
      .navigationBarBackButtonHidden(true)
      .ignoresSafeArea()
   }
}

#Preview {
   NavigationStack{
      InterviewDateView(path: .constant(NavigationPath()), progress: .constant(0.0), talent: .constant(Talent(User_Nama: "", User_Email: "", User_Password: "", User_Description: "", Role: "", Experience: 0, Offering: 0, Willing_To_relocate: "", Interview_Count: 0, Skills: [""], Links: [""])))
   }
}
