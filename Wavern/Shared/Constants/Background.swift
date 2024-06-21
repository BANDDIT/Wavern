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
         Gradient.Stop(color: .primaryPurple, location: 0.00),
         Gradient.Stop(color: .secondaryPurple, location: 1.00),
      ],
      startPoint: UnitPoint(x: 0.5, y: 0),
      endPoint: UnitPoint(x: 0.5, y: 1)
   )
}
