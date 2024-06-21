//
//  HeaderView.swift
//  Wavern
//
//  Created by Paulus Michael on 21/06/24.
//

import SwiftUI

struct HeaderView: View {
   @State var search: String = ""
   
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
       .padding(.bottom)
       .padding(.top, 60)
       .background(
          ZStack {
             LinearGradient(
                stops: [
                   Gradient.Stop(color: Colors.purple600, location: 0.00),
                   Gradient.Stop(color: Colors.purple300, location: 1.00),
                ],
                startPoint: UnitPoint(x: 0.5, y: 0),
                endPoint: UnitPoint(x: 0.5, y: 1)
             )
          }
       )
       .ignoresSafeArea()
    }
}

#Preview {
    HeaderView()
}
