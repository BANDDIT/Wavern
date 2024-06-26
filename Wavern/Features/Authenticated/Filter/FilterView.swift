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
   
   @Binding var filterCriteria: FilterCriteria
   
   var body: some View {
      ScrollView(.horizontal, showsIndicators: false) {
         HStack{
            Button(action: {
               isRoleModalPresented.toggle()
            }, label: {
               HStack {
                  Text("Role")
                     .padding(.horizontal, 8)
                     .font(Fonts.medium13)
                  
                  Image(systemName: "chevron.down")
               }
               .padding([.vertical, .trailing], 12)
               .overlay {
                  RoundedRectangle(cornerRadius: 12)
                     .stroke(.black, lineWidth: 0.2)
               }
               .foregroundStyle(.black)
            })
            .sheet(isPresented: $isRoleModalPresented, content: {
               RoleModalView(selectedRoles: $filterCriteria.selectedRoles)
                  .presentationDetents([.height(300)])
            })
            
            Button(action: {
               isSkillModalPresented.toggle()
            }, label: {
               HStack {
                  Text("Skills")
                     .padding(.horizontal, 8)
                     .font(Fonts.medium13)
                  
                  Image(systemName: "chevron.down")
               }
               .padding([.vertical, .trailing], 12)
               .overlay {
                  RoundedRectangle(cornerRadius: 12)
                     .stroke(.black, lineWidth: 0.2)
               }
               .foregroundStyle(.black)
            })
            .sheet(isPresented: $isSkillModalPresented, content: {
               SkillModalView()
            })
            
            Button(action: {
               isBudgetModalPresented.toggle()
            }, label: {
               HStack {
                  Text("Budget")
                     .padding(.horizontal, 8)
                     .font(Fonts.medium13)
                  
                  Image(systemName: "chevron.down")
               }
               .padding([.vertical, .trailing], 12)
               .overlay {
                  RoundedRectangle(cornerRadius: 12)
                     .stroke(.black, lineWidth: 0.2)
               }
               .foregroundStyle(.black)
            })
            .sheet(isPresented: $isBudgetModalPresented, content: {
               BudgetModalView(budget: $filterCriteria.budget)
                  .presentationDetents([.height(226)])
            })
            
            Button(action: {
               isYoeModalPresented.toggle()
            }, label: {
               HStack {
                  Text("YOE")
                     .padding(.horizontal, 8)
                     .font(Fonts.medium13)
                  
                  Image(systemName: "chevron.down")
               }
               .padding([.vertical, .trailing], 12)
               .overlay {
                  RoundedRectangle(cornerRadius: 12)
                     .stroke(.black, lineWidth: 0.2)
               }
               .foregroundStyle(.black)
            })
            .sheet(isPresented: $isYoeModalPresented, content: {
               YOEModalView(yoe: $filterCriteria.yoe)
                  .presentationDetents([.height(226)])
            })
         }
      }
   }
}


#Preview {
   FilterView(filterCriteria: .constant(FilterCriteria(selectedRoles: [""], yoe: "", budget: "")))
}
