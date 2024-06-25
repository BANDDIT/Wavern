//
//  InterviewView.swift
//  Wavern
//
//  Created by Paulus Michael on 20/06/24.
//

import SwiftUI

struct InterviewView: View {
   @StateObject var model = InterviewModel()
   var viewModel = InterviewViewModel()
   
   var body: some View {
      ScrollView {
         VStack(alignment: .leading, spacing: 4){
            VStack {
               Text("Interview")
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .font(Fonts.semibold20)
                  .foregroundStyle(.neutral600)
                  .padding(.horizontal, Size.padding24)
                  .padding(.vertical)
               
               Divider()
               
               VStack {
                  CustomSegmentedPicker(selectedCategory: $model.selectedCategory)
               }
               .padding(.vertical, 12)
               .padding(.horizontal, Size.padding24)
            }
            .background(.white)
            
            viewModel.screenView(model: model)
         }
      }
      .background(Colors.neutral100)
      .padding(.top, 60)
      .ignoresSafeArea()
   }
}

#Preview {
   InterviewView()
}
