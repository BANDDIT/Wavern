//
//  WaitingListView.swift
//  Wavern
//
//  Created by Paulus Michael on 20/06/24.
//

import SwiftUI

struct WaitingListView: View {
   var body: some View {
      HStack{
         VStack{
            Text("JUN")
            Text("22")
         }
         .padding(.horizontal)
         
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
