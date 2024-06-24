//
//  HeaderView.swift
//  Wavern
//
//  Created by Paulus Michael on 21/06/24.
//

import SwiftUI

struct HeaderView: View {
   @StateObject var model = DashboardModel()
   
   var body: some View {
      VStack {
         HStack{
            Text("Explore")
               .font(Fonts.semibold32)
               .foregroundStyle(.neutral)
            
            Spacer()
            
            Image(systemName: "bookmark")
               .resizable()
               .frame(width: 20, height: 24)
               .foregroundStyle(.neutral)
         }
         .padding()
         
         VStack {
            SearchTextField(search: $model.search)
         }
         .padding(.horizontal)
      }
      .padding(.bottom, Size.padding8)
      .padding(.top, Size.padding60)
      .background(
         ZStack {
            Background.bgGradient
            
            ForEach(model.increments, id: \.self) { increment in
               Home()
                  .fill(
                     Background.bgHome
                  )
                  .frame(width: CGFloat(increment), height: CGFloat(increment))
                  .opacity(0.08)
            }
         }
            .frame(maxWidth: .infinity, maxHeight: 213, alignment: .center)
            .clipped()
      )
      .ignoresSafeArea()
   }
}

#Preview {
   HeaderView()
}
