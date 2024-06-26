//
//  AllTalentsView.swift
//  Wavern
//
//  Created by Paulus Michael on 19/06/24.
//

import SwiftUI

struct AllTalentsView: View {
   @Environment(ModelData.self) private var modelData
   @Binding var path: NavigationPath
   @Binding var talent: Talent?
   @ObservedObject var filter: Filter
   
   @State private var filterCriteria = FilterCriteria(selectedRoles: [], yoe: "", budget: "")

   var body: some View {
      ScrollView {
         TalentLabelView(path: $path)

         ScrollView(.horizontal, showsIndicators: false) {
            FilterView(filterCriteria: $filterCriteria)
         }
         .padding()

         VStack {
            ForEach(Array(filter.filteredUsers), id: \.self) { user in
               TalentListView(user: user)
                  .padding()
                  .background(.white)
                  .clipShape(RoundedRectangle(cornerRadius: 12))
                  .overlay {
                     RoundedRectangle(cornerRadius: 12)
                        .stroke(.black.opacity(0.1))
                  }
                  .foregroundStyle(.black)
                  .onTapGesture {
                     talent = user
                     path.append(Destination.talentDetailView)
                  }
            }
         }
         .padding(.horizontal)
      }
      .onAppear {
         filter.applyFilter(criteria: filterCriteria)
      }
      .onChange(of: filterCriteria) { newCriteria in
         filter.applyFilter(criteria: newCriteria)
      }
   }
}

#Preview {
   NavigationStack {
      AllTalentsView(path: .constant(NavigationPath()), talent: .constant(Talent(User_Nama: "Hello", User_Email: "Hello", User_Password: "Hello", User_Description: "Hello", Role: "Hello", Experience: 1, Offering: 1, Willing_To_relocate: "Hello", Interview_Count: 1, Skills: [""], Links: [""])), filter: Filter(people: ModelData().talentList))
         .environment(ModelData())
   }
}
