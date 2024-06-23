//
//  InterviewViewModel.swift
//  Wavern
//
//  Created by Arrick Russell Adinoto on 22/06/24.
//

import Foundation
import SwiftUI

class InterviewViewModel:ObservableObject{
    @Published var date:Date = Date.now
    
    @Published var time:Time = Time(9,0)
    @Published var time2:Time = Time(10,0)
    @Published var tellUsMore:String = ""

    @Published var beginTime:Bool = false
    @Published var endTime:Bool = false
    @Published var tellUs:Bool = true
    
    @Published var extraSchedHeight:CGFloat = 0
    
    
    public func toggleBeginTime(){
        if(beginTime){
            extraSchedHeight = extraSchedHeight - 200
        }
        else{
            extraSchedHeight = extraSchedHeight + 200
        }
        beginTime.toggle()
    }
    
    public func toggleEndTime(){
        if(endTime){
            extraSchedHeight = extraSchedHeight - 200
        }
        else{
            extraSchedHeight = extraSchedHeight + 200
        }
        endTime.toggle()
    }
    
}
