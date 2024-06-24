//
//  FilterView.swift
//  Wavern
//
//  Created by Paulus Michael on 24/06/24.
//

import SwiftUI

struct FilterView: View {
   var roleAction: () -> Void
   var skillAction: () -> Void
   var budgetAction: () -> Void
   var yoeAction: () -> Void
   
   var body: some View {
      ScrollView(.horizontal, showsIndicators: false) {
         HStack{
            Button(action: {roleAction()}, label: {
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
            
            Button(action: {roleAction()}, label: {
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
            
            Button(action: {skillAction()}, label: {
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
            
            Button(action: {budgetAction()}, label: {
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
            
            Button(action: {yoeAction()}, label: {
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
         }
      }
   }
}

#Preview {
   FilterView(roleAction: {}, skillAction: {}, budgetAction: {}, yoeAction: {})
}
