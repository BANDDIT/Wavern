//
//  InterviewView.swift
//  Wavern
//
//  Created by Paulus Michael on 20/06/24.
//

import SwiftUI

struct InterviewView: View {
   @State private var selectedCategory: Int = 0
   
   var body: some View {
      ScrollView {
         VStack(alignment: .leading){
            Text("Interview")
               .frame(maxWidth: .infinity, alignment: .leading)
               .font(.title3)
               .fontWeight(.semibold)
               .foregroundStyle(.neutral600)
               .padding()
            
            Divider()
            
            VStack {
               CustomSegmentedPicker(selectedCategory: $selectedCategory)
            }
            .padding()
            
            if selectedCategory == 0{
               WaitingListView()
            }else{
               InterviewedListView()
            }
         }
         .padding(.top, 60)
      }
      .background(Colors.white)
      .ignoresSafeArea()
   }
}

#Preview {
   InterviewView()
}
