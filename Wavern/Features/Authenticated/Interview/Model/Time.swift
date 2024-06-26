//
//  Time.swift
//  Wavern
//
//  Created by Paulus Michael on 24/06/24.
//

import Foundation

struct Time{
   var hour:Int
   var minute:Int
   
   init(_ hour:Int, _ minute:Int){
      self.hour = hour
      self.minute = minute
   }
    
    public func getHour()->String{
        if(hour<10){
            return "0\(hour)"
        }
        else{
            return "\(hour)"
        }
    }
    
    public func getMinute()->String{
        if(minute<10){
            return "0\(minute)"
        }
        else{
            return "\(minute)"
        }
    }
}
