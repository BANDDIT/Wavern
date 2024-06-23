//
//  TalentsProfileView.swift
//  Wavern
//
//  Created by Arrick Russell Adinoto on 20/06/24.
//

//
//  TalentsProfileView.swift
//  Wavern
//
//  Created by Arrick Russell Adinoto on 19/06/24.
//

import SwiftUI

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}


struct Portofolio:Identifiable{
    var id=UUID()
    var img:String
    var link:String
}


struct TalentsProfileView: View {
    @Environment(\.dismiss) private var dismiss

    
    var name:String="Jesslyn Devaline"
    var employmentType:EmploymentTypeView.employmentType = .full_time
    
    @State var interviewBtnColor:Color=Color.primaryPurple
    @State var interviewTxtColor:Color=Color.white
    @State var isInvited:Bool=false
    
    
    //@State var skills:[String]=["UI/UX Design","Research","Product Thinking","Prototyping","Product Strategy","Interaction Design"]
    @State var skills:[[String]]=[
        ["UI/UX Design","Research","Product Thinking"],
        ["Prototyping","Product Strategy","Interaction Design"]]
    
    var portofolios:[Portofolio]=[
        Portofolio(img:"email_logo",link:"https://www.google.com"),
        Portofolio(img:"instagram_logo",link:"https://www.instagram.com"),
        Portofolio(img:"github_logo",link:"https://www.github.com"),
        Portofolio(img:"dribble_logo",link:"https://www.dribble.com"),
        Portofolio(img:"figma_logo",link:"https://www.figma.com"),
        Portofolio(img:"link_logo",link:"https://www.google.com")
    ]
    
    var body: some View {
        VStack{
            Image("DummyTalentsProfile")
            HStack{
                VStack(alignment:.leading){
                    HStack{
                        Text("\(name)").font(.system(size:20,weight:.semibold))
                        EmploymentTypeView(type:employmentType)
                    }
                    Text("Product Designer").font(.system(size:16,weight:.regular)).foregroundColor(.neutral500)
                    
                    
                    Text("")
                    
                    HStack{
                        Image("yoe_symbol").frame(width:15)
                        Text("1-3 YOE").foregroundColor(.neutral400).font(.system(size:13,weight:.medium))
                    }
                    
                    HStack{
                        Image("salary_symbol").frame(width:15)
                        Text("Rp5.000.000").foregroundColor(.neutral400).font(.system(size:13,weight:.medium))
                    }
                    
                    HStack{
                        Image("loc_symbol").frame(width:15)
                        Text("Willing to Relocate").foregroundColor(.neutral400).font(.system(size:13,weight:.medium))
                    }
                }
                .padding([.leading,.trailing],24)
                .padding([.top,.bottom],20)
                Spacer()
            }
            .frame(width:UIScreen.screenWidth).background(.white)
            
            HStack{
        
                VStack(alignment:.leading){
                    Spacer()
                    Text("Skills").font(.system(size:20,weight:.semibold))
                    
                    
                    SkillTagView("UI/UX Design")
                    HStack{
                        ForEach(skills,id:\.self){ skill in
                            SkillTagView("\(skill)")

                        }
                    }
                    
                    Spacer()
                    
                    /*
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
                     */
                }
                .padding(.leading,24)
                Spacer()
            }.frame(width:UIScreen.screenWidth, height:144).background(.white)
            
            
            HStack{
                VStack(alignment:.leading){
                    Text("Portofolio Links").font(.system(size:20,weight:.semibold))
                    
                    
                    HStack{
                        ForEach(portofolios,id:\.id){ portofolio in
                            PortofolioTagView(img:portofolio.img, link:portofolio.link)
                        }
                    }
                    
                }.padding(.leading,24)
                Spacer()
                
            }.frame(width:UIScreen.screenWidth,height:118).background(.white)
            
            
            Spacer()

            
            VStack{
                Button(action:{
                    withAnimation{
                        if(interviewBtnColor != .neutral300){
                            isInvited=true
                            interviewBtnColor = .neutral300
                            interviewTxtColor = .neutral500
                        }
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                        withAnimation{
                            isInvited=false
                        }
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

struct PortofolioTagView:View{
    var img:String
    var edges:Edge.Set = []
    var leftPadding:CGFloat=0
    var rightPadding:CGFloat=0
    var topPadding:CGFloat=0
    var bottomPadding:CGFloat=0
    
    var link:String

    var body : some View{
        Button(action:{
            if let url = URL(string: link) {
                UIApplication.shared.open(url)
            }
        },label:{
            VStack{
                if(img=="github_logo"){
                    Image(img)
                        .padding(.top,7).padding(.trailing,1)
                }
                else{
                    Image(img).padding(.leading,leftPadding).padding(.trailing,rightPadding).padding(.top,topPadding).padding(.bottom,bottomPadding)
                }
            }.frame(width:42,height:42).background(LinearGradient(colors:[.primaryPurple,.secondaryPurple],startPoint:.top,endPoint:.bottom)).cornerRadius(180)
        })
    }
}


#Preview {
    
    NavigationStack{
        TalentsProfileView()
    }
    
    //EmploymentTypeView(type: .part_time)
    //SkillTagView(text: "UI/UX Design")
}
