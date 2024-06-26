//
//  TalentSingleton.swift
//  Wavern
//
//  Created by Arrick Russell Adinoto on 26/06/24.
//

import Foundation

class TalentSingleton:ObservableObject{
    public static let shared = TalentSingleton()
    
    private init() {
        // private initializer to prevent instantiation from outside
    }
    
    @Published public var listTalent: [Talent] = []
    @Published public var listStartTime: [Time] = []
    @Published public var listEndTime: [Time] = []

    @Published var listDate: [Date] = []
    
    @Published var listInterviewedTalent:[Talent]=[
        Talent(User_Nama: "Christina Augustina", User_Email: "christina@gmail.com", User_Password: "12345", User_Description: "A Passionate Product Manager who experienced for 5 years.", Role: "Product Manager", Experience: 5, Offering: 8000000, Willing_To_relocate: "Relocate", Interview_Count: 5,Skills:["UI/UX Design", "Research", "Product Thinking", "Prototyping", "Product Strategy", "Interaction Design"],Links:["https://github.com/","https://github.com/","https://github.com/","https://github.com/","https://github.com/"]),
        Talent(User_Nama: "Maria Antonia", User_Email: "maria_antonia@gmail.com", User_Password: "12345", User_Description: "A Passionate Product Manager who experienced for 5 years.", Role: "Product Manager", Experience: 5, Offering: 8000000, Willing_To_relocate: "Relocate", Interview_Count: 5,Skills:["UI/UX Design", "Research", "Product Thinking", "Prototyping", "Product Strategy", "Interaction Design"],Links:["https://github.com/","https://github.com/","https://github.com/","https://github.com/","https://github.com/"])
    ]
    
    
    @Published var listTalentForInterview:[Talent]=[
        Talent(User_Nama: "Felicia Diana", User_Email: "felicia@gmail.com", User_Password: "12345", User_Description: "A Passionate Product Manager who experienced for 5 years.", Role: "Product Manager", Experience: 5, Offering: 8000000, Willing_To_relocate: "Relocate", Interview_Count: 5,Skills:["UI/UX Design", "Research", "Product Thinking", "Prototyping", "Product Strategy", "Interaction Design"],Links:["https://github.com/","https://github.com/","https://github.com/","https://github.com/","https://github.com/"]),
        Talent(User_Nama: "Theresia Angela", User_Email: "th_angela@gmail.com", User_Password: "12345", User_Description: "A Passionate Product Manager who experienced for 5 years.", Role: "Product Manager", Experience: 5, Offering: 8000000, Willing_To_relocate: "Relocate", Interview_Count: 5,Skills:["UI/UX Design", "Research", "Product Thinking", "Prototyping", "Product Strategy", "Interaction Design"],Links:["https://github.com/","https://github.com/","https://github.com/","https://github.com/","https://github.com/"])
    ]
    @Published var startTimeForInterview:[Time]=[Time(9,0),Time(11,0)]
    @Published var endTimeForInterview:[Time]=[Time(10,0),Time(12,0)]
    @Published var dateForInterview:[Date]=[Date.now,Date.now]

    /*
    @Published var listTalentSkill:[TalentSkill]=[
        TalentSkill(User_Nama: "Felicia Diana", Skill1: "UI/UX Design", Skill2: "Research", Skill3: "Product Thinking", Skill4: "Prototyping", Skill5: "Product Strategy", Skill6: "Interaction Design"),
        TalentSkill(User_Nama: "Theresia Angela", Skill1: "iOS", Skill2: "SwiftUI", Skill3: "Swift", Skill4: "UIKit", Skill5: "SwiftData", Skill6: "Database")
    ]
    */
    
    @Published var acceptedTalent:[Talent]=[]
    @Published public var acceptedStartTime: [Time] = []
    @Published public var acceptedEndTime: [Time] = []
    @Published var acceptedDate: [Date] = []

    //@State public static var staticTesting:String = "Hello"
    
    @Published var testing:String=""
    
}
