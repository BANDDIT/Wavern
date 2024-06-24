//
//  DashboardModel.swift
//  Wavern
//
//  Created by Paulus Michael on 22/06/24.
//

import SwiftUI

class DashboardModel: ObservableObject {
   let increments = [100, 200, 300, 400]
   @Published var search = ""
}
