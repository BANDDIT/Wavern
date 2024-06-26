//
//  CustomProgressViewStyle.swift
//  Wavern
//
//  Created by Paulus Michael on 26/06/24.
//

import Foundation
import SwiftUI

struct CustomProgressViewStyle: ProgressViewStyle {
  var myColor: Color

  func makeBody(configuration: Configuration) -> some View {
      ProgressView(configuration)
          .tint(myColor)
          .frame(height: 10.0) // Manipulate height, y scale effect and corner radius to achieve your needed results
          .scaleEffect(x: 1, y: 3, anchor: .center)
          .background(.white.opacity(0.5))
          .clipShape(RoundedRectangle(cornerRadius: 12))
  }
}
