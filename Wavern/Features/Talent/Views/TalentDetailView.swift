//
//  TalentDetailView.swift
//  Wavern
//
//  Created by Paulus Michael on 19/06/24.
//

import SwiftUI

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}

struct TalentDetailView: View {
   @Environment(\.dismiss) var dismiss
   var timer: Timer = Timer()
   
   @State var isInvited:Bool=false
   
   var body: some View {
      VStack{
         ZStack (alignment: .topLeading){
            HStack{
               Button(action:{
                  dismiss()
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
                  SkillTag("UI/UX Design")
                  SkillTag("Research")
                  SkillTag("Product Thinking")
               }
               
               HStack{
                  SkillTag("Prototyping")
                  SkillTag("Product Strategy")
                  SkillTag("Interaction Design")
                  
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
                  PortofolioTagView(img: "figma_logo")
                  PortofolioTagView(img: "figma_logo")
                  PortofolioTagView(img: "figma_logo")
                  PortofolioTagView(img: "figma_logo")
               }
               
            }.padding(.leading,24)
            Spacer()
         }.padding(.vertical).background(.white)
         
         Spacer()
         
         VStack{
            
            // TODO: Move to 1 file
            Buttons(text: Phrases.interviewButton, bgColor: Colors.purple600, txtColor: Colors.white)
               .padding(.vertical)
            
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
      TalentDetailView()
   }
}
