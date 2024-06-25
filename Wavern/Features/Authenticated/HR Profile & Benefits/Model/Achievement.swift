//
//  Achievement.swift
//  Wavern
//
//  Created by Paulus Michael on 25/06/24.
//

import SwiftUI

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}

class Achievement:Identifiable{
   var achievementId = UUID()
   var achievementTitle : String
   var achievementDesc : String
   var achievementAsset : String
   
   init(title:String,desc:String,asset:String){
      self.achievementTitle = title
      self.achievementDesc = desc
      self.achievementAsset = asset
   }
}
