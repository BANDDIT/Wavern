//
//  InterviewDateViewModel.swift
//  Wavern
//
//  Created by Arrick Russell Adinoto on 23/06/24.
//

import Foundation
import SwiftUI

class InterviewDateViewModel:ObservableObject{
    @Published var date:Date = Date.now
    
    @Published var time:Time = Time(9,0)
    @Published var time2:Time = Time(10,0)
    @Published var tellUsMore:String = ""
    
    @Published var timeColor:Color = .neutral600
    @Published var time2Color:Color = .neutral600

    @Published var beginTime:Bool = false
    @Published var endTime:Bool = false
    @Published var tellUs:Bool = true
    
    @Published var extraSchedHeight:CGFloat = 0
    
    
    public func toggleBeginTime(){
        if(beginTime){
            extraSchedHeight = extraSchedHeight - 200
            timeColor = .neutral600
        }
        else{
            extraSchedHeight = extraSchedHeight + 200
            timeColor = .primaryPurple
        }
        beginTime.toggle()
    }
    
    public func toggleEndTime(){
        if(endTime){
            extraSchedHeight = extraSchedHeight - 200
            time2Color = .neutral600
        }
        else{
            extraSchedHeight = extraSchedHeight + 200
            time2Color = .primaryPurple
        }
        endTime.toggle()
    }
    
    public func isUnderTen(_ digit:Int) -> Bool{
        if(digit<10){
            return true
        }
        return false
    }

    
    public func isInputEmpty() -> Bool{
        if(tellUsMore==""){
            return true
        }
        return false
    }
    
    public func isTextEqualsFrom(_ txt:String) -> Bool{
        if(txt=="From"){
            return true
        }
        return false
    }
    
    public func isNotTyping()->Bool{
        if(tellUs && isInputEmpty()){
            return true
        }
        return false
    }
    
    public func getMinute(_ time:Time)->String{
        if(isUnderTen(time.minute)){
            return "0\(time.minute)"
        }
        else{
            return "\(time.minute)"
        }
    }
    
    public func getHour(_ time:Time)->String{
        if(isUnderTen(time.hour)){
            return "0\(time.hour)"
        }
        else{
            return "\(time.hour)"
        }
    }
}
