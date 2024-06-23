//
//  CompletedChallengeView.swift
//  Wavern
//
//  Created by Arrick Russell Adinoto on 20/06/24.
//

import SwiftUI


struct Home: Shape {
   var cornerRadius: CGFloat = 12
   
   func path(in rect: CGRect) -> Path {
      var path = Path()
      
      let roofHeight = rect.height * 0.4
      let roofTop = CGPoint(x: rect.midX, y: rect.minY)
      let roofBottomLeft = CGPoint(x: rect.minX, y: roofHeight)
      let roofBottomRight = CGPoint(x: rect.maxX, y: roofHeight)
      
      // Define the house base
      let baseTopLeft = CGPoint(x: rect.minX, y: roofHeight)
      let baseTopRight = CGPoint(x: rect.maxX, y: roofHeight)
      let baseBottomLeft = CGPoint(x: rect.minX, y: rect.maxY)
      let baseBottomRight = CGPoint(x: rect.maxX, y: rect.maxY)
      
      // Draw the roof with rounded top
      path.move(to: roofBottomLeft)
      
      path.addLine(to: CGPoint(x: roofTop.x - cornerRadius, y: roofTop.y + cornerRadius))
      
      path.addQuadCurve(to: CGPoint(x: roofTop.x + cornerRadius, y: roofTop.y + cornerRadius), control: roofTop)
      
      path.addLine(to: roofBottomRight)
      
      // Draw the house base with rounded corners
      path.addArc(center: CGPoint(x: baseTopRight.x - cornerRadius, y: baseTopRight.y + cornerRadius), radius: cornerRadius, startAngle: .degrees(270), endAngle: .degrees(360), clockwise: false)
      
      path.addLine(to: CGPoint(x: baseBottomRight.x, y: baseBottomRight.y - cornerRadius))
      
      path.addArc(center: CGPoint(x: baseBottomRight.x - cornerRadius, y: baseBottomRight.y - cornerRadius), radius: cornerRadius, startAngle: .degrees(0), endAngle: .degrees(90), clockwise: false)
      
      path.addLine(to: CGPoint(x: baseBottomLeft.x + cornerRadius, y: baseBottomLeft.y))
      
      path.addArc(center: CGPoint(x: baseBottomLeft.x + cornerRadius, y: baseBottomLeft.y - cornerRadius), radius: cornerRadius, startAngle: .degrees(90), endAngle: .degrees(180), clockwise: false)
      
      path.addLine(to: CGPoint(x: baseTopLeft.x, y: baseTopLeft.y + cornerRadius))
      
      path.addArc(center: CGPoint(x: baseTopLeft.x + cornerRadius, y: baseTopLeft.y + cornerRadius), radius: cornerRadius, startAngle: .degrees(180), endAngle: .degrees(270), clockwise: false)
      
      return path
   }
}

struct BackgroundView: View {
   let increments = [100, 200, 300, 400, 500, 600, 700]
   
   var body: some View {
      ZStack {
         ForEach(increments, id: \.self) { increment in
            Home()
               .fill(
                  LinearGradient(
                     stops: [
                        Gradient.Stop(color: .white.opacity(0.2), location: 0.00),
                        Gradient.Stop(color: .secondaryPurple, location: 1.00),
                     ],
                     startPoint: UnitPoint(x: 0.5, y: 0),
                     endPoint: UnitPoint(x: 0.5, y: 1)
                  )
               )
               .frame(width: CGFloat(increment), height: CGFloat(increment))
               .zIndex(10)
         }
      }
   }
}


struct CompletedChallengeView: View {
    
    var body: some View {
        ZStack{
            LinearGradient(colors:[.primaryPurple,.secondaryPurple],startPoint:.top,endPoint:.bottom)
            
            
            BackgroundView()
            
            VStack{
                Spacer()
                Spacer()
                
                VStack{
                    Text("Challenge").font(.system(size:32,weight:.bold)).foregroundColor(.white)
                    Text("Completed 🎉").font(.system(size:32,weight:.bold)).foregroundColor(.white)
                }
                
                
                Spacer()
                Image("gold_star").resizable().frame(width:176,height:176)
                Spacer()
                VStack{
                    Text("First Journey").foregroundColor(.white).font(.system(size:24,weight:.semibold)).padding(.bottom,2)
                    Text("Reach out your first talent").foregroundColor(.white).font(.system(size:16,weight:.medium)).padding(.bottom,15)
   
                    Text("+100 Points").foregroundColor(.white).font(.system(size:17,weight:.semibold)).frame(width:117,height:40).background(Color.white.opacity(0.2)).cornerRadius(51)
                }
                
                Spacer()
                Spacer()
                VStack{                    
                    Button(action:{
                        
                    },label:{
                        VStack{
                            Text("Back Home").foregroundColor(.primaryPurple).font(.system(size:17,weight:.semibold))
                        }.frame(width:361,height:56).background(.white).cornerRadius(12)
                    })
                    .padding(16)
                    
                    
                    Spacer()
                    /*
                    VStack{
                        Text("")
                    }.frame(width:120,height:5).background(.white).cornerRadius(5).padding(10).padding(.bottom,10)
                    */
                }.frame(width:UIScreen.screenWidth,height:128).background(.clear)
            }
        }.edgesIgnoringSafeArea(.all)


    }
}

#Preview {
    CompletedChallengeView()
}
