//
//  Background.swift
//  Wavern
//
//  Created by Paulus Michael on 21/06/24.
//

import Foundation
import SwiftUI

struct Background {
   static let bgGradient: LinearGradient =
   LinearGradient(
      stops: [
         Gradient.Stop(color: Colors.purple600, location: 0.00),
         Gradient.Stop(color: Colors.purple300, location: 1.00),
      ],
      startPoint: UnitPoint(x: 0.5, y: 0),
      endPoint: UnitPoint(x: 0.5, y: 1)
   )
   
   static let bgHome: LinearGradient =
   LinearGradient(
      stops: [
         Gradient.Stop(color: Colors.white.opacity(0.05), location: 0.00),
         Gradient.Stop(color: Colors.purple300, location: 1.00),
      ],
      startPoint: UnitPoint(x: 0.5, y: 0),
      endPoint: UnitPoint(x: 0.5, y: 1)
   )
}
