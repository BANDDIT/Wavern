//
//  WaitingListView.swift
//  Wavern
//
//  Created by Paulus Michael on 20/06/24.
//

import SwiftUI

struct WaitingListView: View {
   var body: some View {
      HStack(alignment: .top){
         VStack{
            Text("JUN")
            Text("22")
         }
         .padding(.horizontal)
         
         Circle()
            .frame(width: 12, height: 12)
            .foregroundStyle(Colors.red600)
            .padding(.vertical, 4)
         
         VStack(alignment: .leading){
            Text("10:00 - 10:30")
            Text("Stefanie Angel")
            Text("Product Designer")
         }
         .padding(.horizontal)
      }
   }
}

#Preview {
   WaitingListView()
}
