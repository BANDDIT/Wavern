//
//  TalentProfileView.swift
//  Wavern
//
//  Created by Paulus Michael on 24/06/24.
//

import SwiftUI
import Foundation
/*
class TalentSingleton {
    public static let shared = TalentSingleton()
    
    private init() {
        // private initializer to prevent instantiation from outside
    }
    
    
    public var listTalent: [Talent] = []
    public var listStartTime: [Time] = []
    public var listEndTime: [Time] = []

    var listDate: [Date] = []
    
    var listInterviewedTalent:[InterviewedTalent]=[
        InterviewedTalent(name:"Felicia Diana",job:"Product Manager",startTime:Time(10,0),endTime:Time(11,0),month:"Jun",date:"20"),
        
        InterviewedTalent(name:"Theresia Angela",job:"iOS Developer",startTime:Time(13,0),endTime:Time(14,0),month:"Jun",date:"20")
    ]
    
    var listTalentForInterview:[Talent]=[
        Talent(User_Nama: "Felicia Diana", User_Email: "felicia@gmail.com", User_Password: "12345", User_Description: "A Passionate Product Manager who experienced for 5 years.", Role: "Product Manager", Experience: 5, Offering: 8000000, Willing_To_relocate: "Relocate", Interview_Count: 5),
        Talent(User_Nama: "Theresia Angela", User_Email: "felicia@gmail.com", User_Password: "12345", User_Description: "Enthusiastic iOS Developer who experienced for 5 years.", Role: "iOS Developer", Experience: 5, Offering: 8000000, Willing_To_relocate: "Relocate", Interview_Count: 5)
    ]
    
    var listTalentSkill:[TalentSkill]=[
        TalentSkill(User_Nama: "Felicia Diana", Skill1: "UI/UX Design", Skill2: "Research", Skill3: "Product Thinking", Skill4: "Prototyping", Skill5: "Product Strategy", Skill6: "Interaction Design"),
        TalentSkill(User_Nama: "Theresia Angela", Skill1: "iOS", Skill2: "SwiftUI", Skill3: "Swift", Skill4: "UIKit", Skill5: "SwiftData", Skill6: "Database")
    ]
     
    
    var acceptedTalent:[Talent]=[]
    var acceptedTalentSkill:[TalentSkill]=[]
    
    @State public static var staticTesting:String = "Hello"
    
    @State var testing:String=""
    /*
    var acceptedTalent:[Talent]=[
        Talent(User_Nama: "Felicia Diana", User_Email: "felicia@gmail.com", User_Password: "12345", User_Description: "A Passionate Product Manager who experienced for 5 years.", Role: "Product Manager", Experience: 5, Offering: 8000000, Willing_To_relocate: "Relocate", Interview_Count: 5),
        Talent(User_Nama: "Theresia Angela", User_Email: "felicia@gmail.com", User_Password: "12345", User_Description: "Enthusiastic iOS Developer who experienced for 5 years.", Role: "iOS Developer", Experience: 5, Offering: 8000000, Willing_To_relocate: "Relocate", Interview_Count: 5)
    ]
    
    var acceptedTalentSkill:[TalentSkill]=[
        TalentSkill(User_Nama: "Felicia Diana", Skill1: "UI/UX Design", Skill2: "Research", Skill3: "Product Thinking", Skill4: "Prototyping", Skill5: "Product Strategy", Skill6: "Interaction Design"),
        TalentSkill(User_Nama: "Theresia Angela", Skill1: "iOS", Skill2: "SwiftUI", Skill3: "Swift", Skill4: "UIKit", Skill5: "SwiftData", Skill6: "Database")
    ]
    */
    
    public func appendAcceptedTalent(talent:Talent){
        acceptedTalent.append(talent)
    }
    
    public func appendAcceptedTalentSkill(talentSkill:TalentSkill){
        acceptedTalentSkill.append(talentSkill)
    }

    //var interviewed
}
 */
class TalentSingleton:ObservableObject{
    public static let shared = TalentSingleton()
    
    private init() {
        // private initializer to prevent instantiation from outside
    }
    
    @Published public var listTalent: [Talent] = []
    @Published public var listStartTime: [Time] = []
    @Published public var listEndTime: [Time] = []

    @Published var listDate: [Date] = []
    
    @Published var listInterviewedTalent:[InterviewedTalent]=[
        InterviewedTalent(name:"Felicia Diana",job:"Product Manager",startTime:Time(10,0),endTime:Time(11,0),month:"Jun",date:"20"),
        
        InterviewedTalent(name:"Theresia Angela",job:"iOS Developer",startTime:Time(13,0),endTime:Time(14,0),month:"Jun",date:"20")
    ]
    
    @Published var listTalentForInterview:[Talent]=[
        Talent(User_Nama: "Felicia Diana", User_Email: "felicia@gmail.com", User_Password: "12345", User_Description: "A Passionate Product Manager who experienced for 5 years.", Role: "Product Manager", Experience: 5, Offering: 8000000, Willing_To_relocate: "Relocate", Interview_Count: 5),
        Talent(User_Nama: "Theresia Angela", User_Email: "felicia@gmail.com", User_Password: "12345", User_Description: "Enthusiastic iOS Developer who experienced for 5 years.", Role: "iOS Developer", Experience: 5, Offering: 8000000, Willing_To_relocate: "Relocate", Interview_Count: 5)
    ]
    
    @Published var listTalentSkill:[TalentSkill]=[
        TalentSkill(User_Nama: "Felicia Diana", Skill1: "UI/UX Design", Skill2: "Research", Skill3: "Product Thinking", Skill4: "Prototyping", Skill5: "Product Strategy", Skill6: "Interaction Design"),
        TalentSkill(User_Nama: "Theresia Angela", Skill1: "iOS", Skill2: "SwiftUI", Skill3: "Swift", Skill4: "UIKit", Skill5: "SwiftData", Skill6: "Database")
    ]
     
    
    @Published var acceptedTalent:[Talent]=[]
    @Published var acceptedTalentSkill:[TalentSkill]=[]
    
    //@State public static var staticTesting:String = "Hello"
    
    @Published var testing:String=""
    
}

struct InterviewedTalent{
    var name:String
    var job:String
    var startTime:Time
    var endTime:Time
    var month:String
    var date:String
}


struct TalentProfileView: View {
    @Binding var path: NavigationPath
    @Binding var progress: Double
    @State var isInvited: Bool = false
    @EnvironmentObject var user: UserModel
    @State private var viewModel = TalentViewModel()
    /*
    @State var talentSingleton:[Talent] = TalentSingleton.shared.listTalent
    @State var acceptedTalent:[Talent] = TalentSingleton.shared.acceptedTalent
    */
    @StateObject var talentSingleton = TalentSingleton.shared


    var body: some View {
        VStack(alignment: .center) {
            TalentCardView(path: $path)
            
            VStack(alignment: .leading) {
                SkillsView()
                    .padding()
                
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 4)
                    .foregroundStyle(Colors.neutral100)
                
                PortfolioViews()
                    .padding([.horizontal, .bottom])
                
                Divider()
                    .padding(.bottom, 8)
                
                HStack {
                    CustomButtons(text: "Save Profile", bgColor: Colors.white, txtColor: Colors.purple600, height: 56, action: {})
                        .overlay {
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Colors.purple600, lineWidth: 1)
                        }
                    
                    CustomButtons(text: "Invite to Interview", bgColor: Colors.purple600, txtColor: Colors.white, height: 56, action: {
                        withAnimation {
                            if !user.isChallengeCompleted {
                                // Navigate to InterviewDateView
                                /*
                                TalentSingleton.shared.listTalent.append(Talent(User_Nama: "Jesslyn Devaline", User_Email: "jesslyndevaline@gmail.com", User_Password: "jesslyndevaline", User_Description: "Jesslyn Devaline", Role: "Product Designer", Experience: 3, Offering: 5000000, Willing_To_relocate: "Relocate", Interview_Count: 5))
                                talentSingleton = TalentSingleton.shared.listTalent
                                */
                                
                                talentSingleton.listTalent.append(Talent(User_Nama: "Jesslyn Devaline", User_Email: "jesslyndevaline@gmail.com", User_Password: "jesslyndevaline", User_Description: "Jesslyn Devaline", Role: "Product Designer", Experience: 3, Offering: 5000000, Willing_To_relocate: "Relocate", Interview_Count: 5))
                                /*
                                TalentSingleton.shared.acceptedTalent.append(Talent(User_Nama: "Jesslyn Devaline", User_Email: "jesslyndevaline@gmail.com", User_Password: "jesslyndevaline", User_Description: "Jesslyn Devaline", Role: "Product Designer", Experience: 3, Offering: 5000000, Willing_To_relocate: "Relocate", Interview_Count: 5))
                                acceptedTalent = TalentSingleton.shared.acceptedTalent
                                */
                                //viewModel.feedbackPopUp(isInvited: $isInvited)
                                //DispatchQueue.main.as
                                
                                //print(talentSingleton)
                                
                               
                                path.append(Destination.interviewDateView)
                                
                                    
                                

                            } else {
                                viewModel.feedbackPopUp(isInvited: $isInvited)
                            }
                        }
                    })
                }
                .padding(.horizontal)
            }
            .frame(maxHeight: .infinity)
            .background(Colors.white)
        }
        .overlay(content: {
            if isInvited {
                SuccessFeedbackView()
            }
        })
        .background(Background.bgGradient)
        .navigationDestination(for: Destination.self) { destination in
            switch destination {
            case .interviewDateView:
                InterviewDateView(path: $path, progress: $progress)
                    .environmentObject(user)
            case .completedChallengeView:
                CompletedChallenge(path: .constant(NavigationPath()), isShow: .constant(true), title1: "Challenge", title2: "Completed", btnText: "Back to Home")
                    .environmentObject(user)
            default:
                EmptyView()
            }
        }
    }
}

#Preview {
    NavigationStack {
        TalentProfileView(path: .constant(NavigationPath()), progress: .constant(0.0))
            .environmentObject(UserModel())
    }
}
