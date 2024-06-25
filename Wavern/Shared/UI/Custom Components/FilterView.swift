//
//  FilterView.swift
//  Wavern
//
//  Created by Paulus Michael on 24/06/24.
//

import SwiftUI

struct FilterView: View {
   @State private var isRoleModalPresented = false
   @State private var isSkillModalPresented = false
   @State private var isBudgetModalPresented = false
   @State private var isYoeModalPresented = false
   
   var body: some View {
      ScrollView(.horizontal, showsIndicators: false) {
         HStack{
            Button(action: {}, label: {
               HStack(alignment: .center) {
                  Image("filter")
               }
               .padding(8)
               .overlay {
                  RoundedRectangle(cornerRadius: 12)
                     .stroke(.black, lineWidth: 0.2)
               }
               .foregroundStyle(.black)
            })
            
            FilterButton(text: "Role", action: {
               isRoleModalPresented.toggle()
            })
            .sheet(isPresented: $isRoleModalPresented, content: {
               RoleModalView()
            })
            
            FilterButton(text: "Skills", action: {
               isSkillModalPresented.toggle()
            })
            .sheet(isPresented: $isSkillModalPresented, content: {
               SkillModalView()
            })
            
            FilterButton(text: "Budget", action: {
               isBudgetModalPresented.toggle()
            })
            .sheet(isPresented: $isBudgetModalPresented, content: {
               BudgetModalView()
            })
            
            FilterButton(text: "YOE", action: {
               isYoeModalPresented.toggle()
            })
            .sheet(isPresented: $isYoeModalPresented, content: {
               YOEModalView()
            })
         }
      }
   }
}

#Preview {
   FilterView()
}
