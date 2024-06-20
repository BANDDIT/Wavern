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
   
   let corners: UIRectCorner = [.topLeft, .bottomLeft, .topRight, .bottomRight]
   
   @State var interviewBtnColor:Color = .primaryPurple
   @State var interviewTxtColor:Color = .white
   @State var isInvited:Bool=false
   
   var body: some View {
      VStack{
         Image("DummyTalentsProfile")
         HStack{
            VStack(alignment:.leading){
               HStack{
                  Text("Jesslyn Devaline").font(.system(size:20,weight:.semibold))
                  EmploymentTypeView(corners: corners, type: .full_time)
               }
               Text("Product Designer").font(.system(size:16,weight:.regular)).foregroundColor(.neutral500)
               
               
               Text("")
               
               VStack(alignment: .leading, spacing: 4){
                  HStack{
                     Image(systemName: "suitcase")
                     Text("1-3 YOE").font(.system(size:13,weight:.medium))
                  }
                  
                  HStack{
                     Image(systemName: "creditcard")
                     Text("Rp5.000.000").font(.system(size:13,weight:.medium))
                  }
                  
                  HStack{
                     Image(systemName: "suitcase")
                     Text("Willing to Relocate").font(.system(size:13,weight:.medium))
                  }
               }
               .opacity(0.4)
            }
            .padding([.leading,.trailing],24)
            .padding([.top,.bottom],20)
            Spacer()
         }
         .frame(width:UIScreen.screenWidth).background(.white)
         
         HStack{
            VStack(alignment:.leading){
               Text("Skills").font(.system(size:20,weight:.semibold))
               HStack{
                  SkillTagView("UI/UX Design")
                  SkillTagView("Research")
                  SkillTagView("Product Thinking")
               }
               
               HStack{
                  SkillTagView("Prototyping")
                  SkillTagView("Product Strategy")
                  SkillTagView("Interaction Design")
                  
               }
            }
            .padding(.leading,24)
            Spacer()
            
         }.frame(width:UIScreen.screenWidth, height:144).background(.white)
         
         HStack{
            VStack(alignment:.leading){
               Text("Portofolio Links").font(.system(size:20,weight:.semibold))
               
               
               HStack{
                  Button(action:{
                     
                  },label:{
                     PortofolioTagView(img:"email_logo")
                  })
                  
                  Button(action:{
                     
                  },label:{
                     PortofolioTagView(img:"instagram_logo")
                  })
                  
                  
                  Button(action:{
                     
                  },label:{
                     PortofolioTagView(img:"github_logo")
                  })
                  
                  
                  Button(action:{
                     
                  },label:{
                     PortofolioTagView(img:"dribble_logo")
                  })
                  
                  
                  Button(action:{
                     
                  },label:{
                     PortofolioTagView(img:"figma_logo")
                  })
                  
                  
                  Button(action:{
                     
                  },label:{
                     PortofolioTagView(img:"link_logo")
                  })
                  
               }
               
            }.padding(.leading,24)
            Spacer()
            
         }.frame(width:UIScreen.screenWidth,height:118).background(.white)
         
         Spacer()
         
         VStack{
            Button(action:{
               withAnimation{
                  isInvited = true
                  
                  DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                     isInvited = false
                  }
                  
                  interviewBtnColor = .neutral300
                  interviewTxtColor = .neutral500
               }
            },label:{
               VStack{
                  Text("Invite to Interview").foregroundColor(interviewTxtColor).font(.system(size:17,weight:.semibold))
               }.frame(width:361,height:56).background(interviewBtnColor).cornerRadius(12)
            })
            .padding(16)
            
            Spacer()
            
            VStack{
               Text("")
            }.frame(width:120,height:5).background(.black).cornerRadius(5).padding(10).padding(.bottom,10)
         }.frame(width:UIScreen.screenWidth,height:128).background(.white)
      }
      .overlay{
         if isInvited{
            HStack{
               HStack{
                  Image(systemName:"checkmark.circle.fill").foregroundColor(.white)
                  Text("")
                  Text("Request Successfully Sent").foregroundColor(.white).font(.system(size:14,weight:.medium))
               }
               .padding(.leading,16)
               Spacer()
            }.frame(width:361,height:48).background(.success600).cornerRadius(12).offset(y:260)
         }
         
         
      }
      .background(.neutral)
      .ignoresSafeArea()
      .navigationBarBackButtonHidden().toolbar{
         HStack{
            Button(action:{
               dismiss()
            },label:{
               Image(systemName:"arrow.backward").foregroundColor(.white)
            }).padding([.leading,.top],24)
            Spacer()
         }
         .frame(width:UIScreen.screenWidth)
      }
   }
}

#Preview {
   NavigationStack {
      TalentDetailView()
   }
}
