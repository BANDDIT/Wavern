//
//  InterviewView.swift
//  Wavern
//
//  Created by Paulus Michael on 20/06/24.
//

import SwiftUI

struct InterviewView: View {
   @State private var selectedCategory: Int = 1
   
   var body: some View {
      VStack(alignment: .leading){
         Text("Interview")
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.title3)
            .fontWeight(.semibold)
            .foregroundStyle(.neutral600)
            .padding()
         
         Divider()
         
         VStack {
            // Category Buttons
            HStack {
               Button(action: {
                  selectedCategory = 1
               }) {
                  Text("Waiting for Interview")
                     .padding()
                     .frame(maxWidth: .infinity)
                     .font(.caption)
                     .fontWeight(.semibold)
                     .background(selectedCategory == 1 ? .primaryPurple : .neutral)
                     .foregroundColor(selectedCategory == 1 ? .white : .black.opacity(0.5))
                     .clipShape(RoundedRectangle(cornerRadius: 12))
               }
               
               Button(action: {
                  selectedCategory = 2
               }) {
                  Text("Interviewed")
                     .padding()
                     .font(.caption)
                     .fontWeight(.semibold)
                     .frame(maxWidth: .infinity)
                     .background(selectedCategory == 2 ? .primaryPurple : .neutral)
                     .foregroundColor(selectedCategory == 2 ? .white : .black.opacity(0.5))
                     .clipShape(RoundedRectangle(cornerRadius: 12))
               }
            }
            .padding(4)
            .background(.neutral)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
         }
         
         if selectedCategory == 1{
            WaitingListView()
         }else{
            InterviewedListView()
         }
      }
      
      Spacer()
   }
}

#Preview {
   InterviewView()
}
