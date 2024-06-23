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


struct PortofolioSectionView:View{
    var portofolios:[Portofolio]
    
    var body : some View{
        HStack{
            VStack(alignment:.leading){
                Text("Portofolio Links").font(.system(size:20,weight:.semibold))
                
                HStack{
                    ForEach(portofolios,id:\.id){ portofolio in
                        PortofolioTagView(img:portofolio.img, link:portofolio.link)
                    }
                }
                
            }.padding(.leading,24).padding(.top,20).padding(.bottom,20)
            Spacer()
            
        }
    }
}

struct SkillsSectionView:View{
    var skills:[String]
    
    var body : some View{
        HStack{
            VStack(alignment:.leading){
                Spacer()
                Text("Skills").font(.system(size:20,weight:.semibold))
                
                FlowLayout{
                    ForEach(skills,id:\.self){ skill in
                        SkillTagView("\(skill)")
                    }
                }
                
                Spacer()
            }
            .padding(.leading,24).padding(.top,15).padding(.bottom,15)
            
            Spacer()
        }
    }
}

class TalentProfileViewModel:ObservableObject{
    @Published var interviewBtnColor:Color=Color.primaryPurple
    @Published var interviewTxtColor:Color=Color.white
    @Published var isInvited:Bool=false
    
    
    public func isInterviewButtonPurple()->Bool{
        if interviewBtnColor != .neutral300 {
            return true
        }
        return false
    }
    
    public func inviteTalent(){
        isInvited = true
        interviewBtnColor = .neutral300
        interviewTxtColor = .neutral500
    }
    
    public func removeInviteFeedback(){
        isInvited = false
    }
}

struct InviteFeedbackView:View{
    var body : some View{
        HStack{
            Image(systemName:"checkmark.circle.fill").foregroundColor(.white)
            Text("")
            Text("Request Successfully Sent").foregroundColor(.white).font(.system(size:14,weight:.medium))
        }
    }
}

struct TalentSectionView:View{
    
    var name:String
    var employmentType:EmploymentTypeView.employmentType
    
    var body : some View{
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
    }
}

struct TalentsProfileView: View {
    @Environment(\.dismiss) private var dismiss

    
    var name:String="Jesslyn Devaline"
    var employmentType:EmploymentTypeView.employmentType = .full_time
    
    @StateObject var talentProfileViewModel:TalentProfileViewModel=TalentProfileViewModel()
    
    
    @State var skills:[String]=["UI/UX Design","Research","Product Thinking","Prototyping","Product Strategy"
    ]
    
    
    var portofolios:[Portofolio]=[
        Portofolio(img:"email_logo",link:"https://www.google.com"),
        Portofolio(img:"instagram_logo",link:"https://www.instagram.com"),
        Portofolio(img:"github_logo",link:"https://www.github.com"),
        Portofolio(img:"dribble_logo",link:"https://www.dribble.com"),
        Portofolio(img:"figma_logo",link:"https://www.figma.com"),
        Portofolio(img:"link_logo",link:"https://www.google.com")
    ]
    
    var body: some View {
        VStack(spacing:5){
            Image("DummyTalentsProfile")
            
            ScrollView{
                VStack(spacing:5){
                    TalentSectionView(name:name, employmentType:.full_time).frame(width:UIScreen.screenWidth).background(.white)
                    
                    SkillsSectionView(skills: skills).frame(width:UIScreen.screenWidth).background(.white)
                    
                    PortofolioSectionView(portofolios:portofolios).frame(width:UIScreen.screenWidth).background(.white)
                }
            }
            
            
            VStack{
                Button(action:{
                    withAnimation{
                        if(talentProfileViewModel.isInterviewButtonPurple()){
                            talentProfileViewModel.inviteTalent()
                        }
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3){
                        withAnimation{
                            talentProfileViewModel.removeInviteFeedback()
                        }
                    }
                },label:{
                    VStack{
                        Text("Invite to Interview").foregroundColor(talentProfileViewModel.interviewTxtColor).font(.system(size:17,weight:.semibold))
                    }.frame(width:361,height:56).background(talentProfileViewModel.interviewBtnColor).cornerRadius(12)
                })
                .padding(16)
                Spacer()
                
             
            }.frame(width:UIScreen.screenWidth,height:128).background(.white)
        }
        .overlay{
            if talentProfileViewModel.isInvited{
                HStack{
                    InviteFeedbackView().padding(.leading,16)
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


struct FlowLayout: Layout {
    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        let sizes = subviews.map { $0.sizeThatFits(.unspecified) }

        var totalHeight: CGFloat = 0
        var totalWidth: CGFloat = 0

        var lineWidth: CGFloat = 0
        var lineHeight: CGFloat = 0

        for size in sizes {
            if lineWidth + size.width > proposal.width ?? 0 {
                totalHeight += lineHeight
                lineWidth = size.width
                lineHeight = size.height
            } else {
                lineWidth += size.width
                lineHeight = max(lineHeight, size.height)
            }

            totalWidth = max(totalWidth, lineWidth)
        }

        totalHeight += lineHeight

        return .init(width: totalWidth, height: totalHeight)
    }

    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        let sizes = subviews.map { $0.sizeThatFits(.unspecified) }

        var lineX = bounds.minX
        var lineY = bounds.minY
        var lineHeight: CGFloat = 0

        for index in subviews.indices {
            if lineX + sizes[index].width > (proposal.width ?? 0) {
                lineY += lineHeight
                lineHeight = 0
                lineX = bounds.minX
            }

            subviews[index].place(
                at: .init(
                    x: lineX + sizes[index].width / 2,
                    y: lineY + sizes[index].height / 2
                ),
                anchor: .center,
                proposal: ProposedViewSize(sizes[index])
            )

            lineHeight = max(lineHeight, sizes[index].height)
            lineX += sizes[index].width
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
