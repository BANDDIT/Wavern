//
//  NameView.swift
//  Wavern
//
//  Created by Paulus Michael on 21/06/24.
//

import SwiftUI

struct NameView: View {
    var body: some View {
       HStack{
          Text("Jesslyn Devaline")
             .font(Fonts.semibold20)
          
          CustomEmploymentType(corners: Size.roundedPartProfile, type: .full_time)
       }
       Text("Product Designer")
          .font(Fonts.regular16)
          .foregroundStyle(Colors.neutral500)
    }
}

#Preview {
    NameView()
}
