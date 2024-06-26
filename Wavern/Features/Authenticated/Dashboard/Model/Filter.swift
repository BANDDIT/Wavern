//
//  Filter.swift
//  Wavern
//
//  Created by Paulus Michael on 26/06/24.
//

import Foundation

class Filter: ObservableObject {
   @Published var people: [Talent]
   @Published var filteredUsers: [Talent]
   
   init(people: [Talent]) {
      self.people = people
      self.filteredUsers = people
   }
   
   func applyFilter(criteria: FilterCriteria) {
      filteredUsers = people
      
      if !criteria.selectedRoles.isEmpty && !criteria.selectedRoles.contains("") {
         filteredUsers = filteredUsers.filter { talent in
            criteria.selectedRoles.contains(talent.Role)
         }
      }
      
      if !criteria.yoe.isEmpty {
         filteredUsers = filteredUsers.filter { talent in
            talent.Experience >= Int(criteria.yoe) ?? 0
         }
      }
      
      if !criteria.budget.isEmpty {
         filteredUsers = filteredUsers.filter { talent in
            talent.Offering <= Int(criteria.budget) ?? 0
         }
      }
   }
}

