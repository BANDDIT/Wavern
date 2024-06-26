//
//  FilterCriteria.swift
//  Wavern
//
//  Created by Paulus Michael on 26/06/24.
//

import Foundation

struct FilterCriteria: Hashable, Codable, Equatable {
    var selectedRoles: [String]
    var yoe: String
    var budget: String
}
