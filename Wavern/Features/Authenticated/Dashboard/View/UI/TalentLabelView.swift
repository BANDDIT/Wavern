//
//  TalentLabelView.swift
//  Wavern
//
//  Created by Paulus Michael on 25/06/24.
//

import SwiftUI

struct TalentLabelView: View {
   @Binding var path: NavigationPath
   
    var body: some View {
       VStack(alignment: .leading) {
          Button(action: {
             path.removeLast()
          }, label: {
             Image(systemName: "arrow.left")
                .opacity(0.5)
             
             Text("Talents")
                .font(.headline)
          })
          .foregroundStyle(.black)
          .padding(.horizontal)
          
          Divider()
       }
    }
}

#Preview {
   TalentLabelView(path: .constant(NavigationPath()))
}
