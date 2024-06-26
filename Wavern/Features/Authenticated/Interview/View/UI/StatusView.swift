//
//  WaitingListView.swift
//  Wavern
//
//  Created by Paulus Michael on 20/06/24.
//

import SwiftUI
/*
struct StatusView: View {
   var circleColor: Color
   
   var body: some View {
      HStack(alignment: .top){
         VStack{
            Text("JUN")
               .font(Fonts.semibold16)
               .opacity(0.3)
               .padding(.bottom, 8)
            
            Text("22")
               .font(Fonts.regular16)
         }
         .padding(.trailing)
         
         Circle()
            .frame(width: 12, height: 12)
            .padding(.trailing)
            .foregroundStyle(circleColor)
         
         VStack(alignment: .leading){
            Text("10:00 - 10:30")
               .font(Fonts.regular13)
               .opacity(0.6)
               .padding(.bottom, 8)
            
            Text("Stefanie Angel")
               .font(Fonts.semibold16)
               .foregroundStyle(Colors.neutral600)
            
            Text("Product Designer")
               .font(Fonts.regular13)
               .opacity(0.5)
         }
         
         Spacer()
      }
      .frame(maxWidth: .infinity)
      .padding(.vertical)
   }
}
*/

struct StatusView: View {
   var circleColor: Color
    
    var month:String="JUN"
    var date:String="22"
    
    var startTime:Time = Time(10,0)
    var endTime:Time = Time(10,30)
    
    var name:String="Stefanie Angel"
    var job:String="Product Designer"
   
   var body: some View {
      HStack(alignment: .top){
         VStack{
            Text("\(month)")
               .font(Fonts.semibold16)
               .opacity(0.3)
               .padding(.bottom, 8)
            
            Text("\(date)")
               .font(Fonts.regular16)
         }
         .padding(.trailing)
         
         Circle()
            .frame(width: 12, height: 12)
            .padding(.trailing)
            .foregroundStyle(circleColor)
         
         VStack(alignment: .leading){
             Text("\(startTime.getHour()):\(startTime.getMinute()) - \(endTime.getHour()):\(endTime.getMinute())")
               .font(Fonts.regular13)
               .opacity(0.6)
               .padding(.bottom, 8)
            
            Text(name)
               .font(Fonts.semibold16)
               .foregroundStyle(Colors.neutral600)
            
            Text(job)
               .font(Fonts.regular13)
               .opacity(0.5)
         }
         
         Spacer()
      }
      .frame(maxWidth: .infinity)
      .padding(.vertical)
   }
}


#Preview {
   StatusView(circleColor: Colors.red600)
}
