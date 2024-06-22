//
//  HeaderView.swift
//  Wavern
//
//  Created by Paulus Michael on 21/06/24.
//

import SwiftUI

struct HeaderView: View {
   @State var search: String = ""
   let increments = [100, 200, 300, 400]
   
   var body: some View {
      VStack {
         HStack{
            Text("Explore")
               .fontWeight(.semibold)
               .font(.title)
               .foregroundStyle(.neutral)
            
            Spacer()
            
            Image(systemName: "bookmark")
               .resizable()
               .frame(width: 20, height: 24)
               .foregroundStyle(.neutral)
         }
         .padding()
         
         VStack {
            HStack {
               Image(systemName: "magnifyingglass")
                  .opacity(0.3)
               
               TextField(text: $search) {
                  Text("Enter Role, Skills, YOE, or Budget")
               }
            }
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
         }
         .padding(.horizontal)
      }
      .padding(.bottom, Size.padding8)
      .padding(.top, Size.padding60)
      .background(
         ZStack {
            Background.bgGradient
            
            ForEach(increments, id: \.self) { increment in
               Home()
                  .fill(
                     Background.bgHome
                  )
                  .frame(width: CGFloat(increment), height: CGFloat(increment))
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
