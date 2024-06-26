//
//  InterviewViewModel.swift
//  Wavern
//
//  Created by Paulus Michael on 23/06/24.
//

import SwiftUI

extension DateFormatter {
    static let monthFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM" // Change this format to suit your needs (e.g., "MM" for numeric month, "MMMM" for full month name)
        return formatter
    }()
}


struct InterviewViewModel {
    func formatDateToDayString(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd"
        return formatter.string(from: date)
    }
    
    func formatDateToMonthString(_ date: Date) -> String {
        return DateFormatter.monthFormatter.string(from: date)
    }
    /*
   func screenView(model: InterviewModel) -> some View{
      if model.selectedCategory == 0{
         return AnyView(
            StatusView(circleColor: Colors.red600)
               .padding(.horizontal, Size.padding24)
               .background(Colors.white)
         )
      }else{
         return AnyView(
            InterviewedListView()
               .padding(.horizontal, Size.padding24)
               .background(Colors.white)
         )
      }
   }
     */
}
