//
//  AchievementCardView.swift
//  Wavern
//
//  Created by Paulus Michael on 20/06/24.
//

//import SwiftUI
//
//struct AchievementCardView: View {
//   var body: some View {
//      ZStack(alignment: .bottomLeading){
//         Image("achievement_card")
//            .scaledToFit()
//         
//         VStack(alignment: .leading) {
//            Text("First Journey")
//               .font(Fonts.semibold16)
//               .foregroundStyle(Colors.white)
//            Text("+100 Points")
//               .font(Fonts.medium13)
//               .foregroundStyle(.white)
//               .padding(.vertical, 4)
//               .padding(.horizontal, 8)
//               .background(.white.opacity(0.25))
//               .clipShape(RoundedRectangle(cornerRadius: 12))
//         }
//         .padding()
//      }
//   }
//}
//
//#Preview {
//   AchievementCardView()
//}

import SwiftUI

struct AchievementCardView: View {
    
    var img:String="gold_star"
    var points:Int
    var title:String
    var desc:String
        
    @State var isStarted:Bool=false
    
   var body: some View {
       ZStack(alignment: .center){
         Image("achievement_card")
               .resizable().frame(width:158,height:230)
        VStack(alignment: .center) {
            Image("\(img)").padding(.top,10)
            
            Text("+\(points) Points")
               .font(Fonts.medium13)
               .foregroundStyle(.white)
               .padding(.vertical, 4)
               .padding(.horizontal, 8)
               .background(.white.opacity(0.25))
               .clipShape(RoundedRectangle(cornerRadius: 12))
            
            Text("\(title)")
               .font(Fonts.semibold16)
               .foregroundStyle(Colors.white)
            Text("\(desc)").foregroundColor(.neutral).font(Fonts.semibold10).opacity(0.7)
            
            
            if isStarted{
                HStack{
                    ProgressView(value:0).background(.white).frame(width:90,height:30).accentColor(.yellow)
                    

                }

                                
            }
            else{
                CustomButtons(text:"Start",bgColor:Colors.white,txtColor:Color.primaryPurple,height:28,action:{
                    isStarted = true
                }).frame(width:139).padding(.top,5)
            }
            
        

          
         }
         
      }.frame(width:158,height:230)
   }
}
/*
#Preview {
    AchievementCardView(points:100,title:"Halo",desc:"Hello World")

}
*/
