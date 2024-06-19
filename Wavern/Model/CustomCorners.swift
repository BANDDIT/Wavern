//
//  CustomCorners.swift
//  Wavern
//
//  Created by Paulus Michael on 19/06/24.
//

import SwiftUI

struct CustomCorners: Shape {
    var corners: UIRectCorner
    var radius: CGFloat

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corners,
            cornerRadii: CGSize(width: radius, height: radius)
        )
        return Path(path.cgPath)
    }
}
