//
//  YourAchievementViewModel.swift
//  Wavern
//
//  Created by Paulus Michael on 25/06/24.
//

import SwiftUI

class YourAchievementViewModel:ObservableObject{
   @Published private var dummyAchievement:[Achievement]=[
      Achievement(title:"First Journey",desc:"Install Wavern",asset:"coin_plus"),
      Achievement(title:"Motivated HR",desc:"Use Wavern for 3 days",asset:"coin_plus"),
      Achievement(title:"Commited HR",desc:"Use Wavern for 7 days",asset:"coin_plus"),
      Achievement(title:"Driven HR",desc:"Interview 5 Talents",asset:"coin_plus"),
      Achievement(title:"Driven HR",desc:"Interview 5 Talents",asset:"coin_plus"),
      
      Achievement(title:"First Journey",desc:"Install Wavern",asset:"coin_plus"),
      Achievement(title:"Motivated HR",desc:"Use Wavern for 3 days",asset:"coin_plus"),
      Achievement(title:"Commited HR",desc:"Use Wavern for 7 days",asset:"coin_plus"),
      Achievement(title:"Driven HR",desc:"Interview 5 Talents",asset:"coin_plus"),
      Achievement(title:"Driven HR",desc:"Interview 5 Talents",asset:"coin_plus"),
      Achievement(title:"Driven HR",desc:"Interview 5 Talents",asset:"coin_plus"),
      Achievement(title:"Driven HR",desc:"Interview 6 Talents",asset:"coin_plus")
   ]
   
   public func getDummyAchievement()->[Achievement]{
      return dummyAchievement
   }
}
