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
               RoleModalView()
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
               BudgetModalView()
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
               YOEModalView()
            })
         }
      }
   }
}

#Preview {
   FilterView()
}
