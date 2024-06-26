//
//  ResultView.swift
//  Wavern
//
//  Created by Paulus Michael on 19/06/24.
//

import SwiftUI
/*
struct ResultView: View {
   var body: some View {
      ScrollView {
         VStack {
            Text("Accepted")
               .frame(maxWidth: .infinity, alignment: .leading)
               .font(Fonts.semibold20)
               .foregroundStyle(.neutral600)
               .padding(.horizontal, Size.padding24)
               .padding(.vertical)
            
            Divider()
             
            
         }
         .background(.white)
         
//          TalentListView()
            .padding()
            .background(.white)
      }
      .background(Colors.neutral100)
      .padding(.top, 60)
      .ignoresSafeArea()
   }
}
*/

import SwiftUI

struct ResultView: View {

    @StateObject var talentSingleton = TalentSingleton.shared
    
    var body: some View {
      ScrollView {
         VStack {
            Text("Accepted")
               .frame(maxWidth: .infinity, alignment: .leading)
               .font(Fonts.semibold20)
               .foregroundStyle(.neutral600)
               .padding(.horizontal, Size.padding24)
               .padding(.vertical)
            
            Divider()
             
             ForEach(Array(talentSingleton.acceptedTalent.enumerated()),id:\.offset){ index,talent in
                 
                 TalentListView(user: talent).padding().background(.white).clipShape(RoundedRectangle(cornerRadius: 12)).environment(ModelData())
                 Divider()
                  
               
             }
             //Text(TalentSingleton.staticTesting)
             /*
             Text(talentSingleton.testing)
             //Text(testing2)
             Text("Halohalo")
              */
         }
         .background(.white)
         .padding()
         .background(.white)
      }
      .background(Colors.neutral100)
      .padding(.top, 60)
      .ignoresSafeArea()
   }
}

#Preview {
   ResultView()
        .environment(ModelData())
}
