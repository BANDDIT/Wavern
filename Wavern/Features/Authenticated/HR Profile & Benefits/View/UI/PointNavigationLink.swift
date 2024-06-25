//
//  PointNavigationLink.swift
//  Wavern
//
//  Created by Paulus Michael on 23/06/24.
//

import SwiftUI

struct PointNavigationLink: View {
    @EnvironmentObject var user: UserModel
    
    var body: some View {
        HStack {
            Text("Bronze")
                .font(Fonts.semibold13)
            
            Spacer()
            
            Text("\(user.points) Points")
                .font(Fonts.semibold13)
        }
        .foregroundStyle(.white)
        .padding()
        .background(.white.opacity(0.15))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding(.vertical)
    }
}

#Preview {
    PointNavigationLink()
        .environmentObject(UserModel())
        .background(.black)
}
