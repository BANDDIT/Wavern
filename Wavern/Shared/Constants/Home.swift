//
//  BackgroundView.swift
//  Wavern
//
//  Created by Paulus Michael on 20/06/24.
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
      
      path.addLine(to: CGPoint(x: baseBottomRight.x, y: baseBottomRight.y - cornerRadius))
      
      path.addArc(center: CGPoint(x: baseBottomRight.x - cornerRadius, y: baseBottomRight.y - cornerRadius), radius: cornerRadius, startAngle: .degrees(0), endAngle: .degrees(90), clockwise: false)
      
      path.addLine(to: CGPoint(x: baseBottomLeft.x + cornerRadius, y: baseBottomLeft.y))
      
      path.addArc(center: CGPoint(x: baseBottomLeft.x + cornerRadius, y: baseBottomLeft.y - cornerRadius), radius: cornerRadius, startAngle: .degrees(90), endAngle: .degrees(180), clockwise: false)
      
      path.addLine(to: CGPoint(x: baseTopLeft.x, y: baseTopLeft.y + cornerRadius))
      
      return path
   }
}
