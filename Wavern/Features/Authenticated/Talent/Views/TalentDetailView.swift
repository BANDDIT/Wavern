//
//  TalentDetailView.swift
//  Wavern
//
//  Created by Paulus Michael on 19/06/24.
//

import SwiftUI

struct TalentDetailView: View {
   @State var isInvited:Bool=false
   var viewModel = TalentViewModel()
   
   @Binding var path: NavigationPath
   
   var body: some View {
      VStack{
         ZStack (alignment: .topLeading){
            HStack{
               Button(action:{
                  path.removeLast()
               },label:{
                  Image(systemName:"arrow.backward").foregroundColor(.white)
                     .imageScale(.large)
               })
               Spacer()
            }
            .zIndex(10)
            .padding(.vertical, 60)
            .padding(.horizontal)
            
            Image("DummyTalentsProfile")
         }
         
         // TODO: di buat 1 komponen
         HStack{
            VStack(alignment:.leading){
               NameView()
               
               Spacer()
               
               DescriptionView()
            }
            .padding([.leading,.trailing],24)
            .padding([.top,.bottom],20)
            Spacer()
         }
         .background(.white)
         
         HStack{
            // TODO: change to grid
            VStack(alignment:.leading){
               Text("Skills").font(Fonts.semibold20)
               HStack{
                  CustomSkillTag("UI/UX Design")
                  CustomSkillTag("Research")
                  CustomSkillTag("Product Thinking")
               }
               
               HStack{
                  CustomSkillTag("Prototyping")
                  CustomSkillTag("Product Strategy")
                  CustomSkillTag("Interaction Design")
                  
               }
            }
            .padding(.leading,24)
            Spacer()
            
         }.padding(.vertical).background(.white)
         
         HStack{
            VStack(alignment:.leading){
               Text("Portofolio Links").font(.system(size:20,weight:.semibold))
               
               // TODO: change to list or for each
               HStack{
                  CustomPortofolioTag(img: "figma_logo")
                  CustomPortofolioTag(img: "figma_logo")
                  CustomPortofolioTag(img: "figma_logo")
                  CustomPortofolioTag(img: "figma_logo")
               }
               
            }.padding(.leading,24)
            Spacer()
         }.padding(.vertical).background(.white)
         
         Spacer()
         
         VStack{
            
            // TODO: Move to 1 file
            CustomButtons(text: Phrases.interviewButton, bgColor: Colors.purple600, txtColor: Colors.white, height: 56, action: {
               withAnimation{
                  viewModel.feedbackPopUp(isInvited: $isInvited)
               }
            })
            .padding()
            
            Spacer()
         }.background(.white)
      }
      .overlay{
         if isInvited{
            SuccessFeedbackView()
         }
      }
      .background(Colors.neutral100)
      .ignoresSafeArea()
   }
}

#Preview {
   NavigationStack {
      TalentDetailView(path: .constant(NavigationPath()))
   }
}
