//
//  TalentProfileView.swift
//  Wavern
//
//  Created by Paulus Michael on 24/06/24.
//

import SwiftUI

struct TalentProfileView: View {
    @Binding var path: NavigationPath
    @State var isInvited: Bool = false
    @EnvironmentObject var user: UserModel

    var body: some View {
        VStack(alignment: .center) {
            TalentCardView(path: $path)

            VStack(alignment: .leading) {
                SkillsView()
                    .padding()

                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 4)
                    .foregroundStyle(Colors.neutral100)

                PortfolioViews()
                    .padding([.horizontal, .bottom])

                Divider()
                    .padding(.bottom, 8)

                HStack {
                    CustomButtons(text: "Save Profile", bgColor: Colors.white, txtColor: Colors.purple600, height: 56, action: {})
                        .overlay {
                            RoundedRectangle(cornerRadius: 12)
                                .stroke(Colors.purple600, lineWidth: 1)
                        }

                    CustomButtons(text: "Invite to Interview", bgColor: Colors.purple600, txtColor: Colors.white, height: 56, action: {
                        withAnimation {
                            isInvited = true
                            user.points += 100
                            user.isChallengeCompleted = true
                            user.interviewedCount += 1
                        }
                    })
                }
                .padding(.horizontal)
            }
            .frame(maxHeight: .infinity)
            .background(Colors.white)
        }
        .overlay(content: {
            if user.isChallengeCompleted {
                CompletedChallenge()
                    .onTapGesture {
                        user.isChallengeCompleted = false
                    }
            }
        })
        .background(Background.bgGradient)
    }
}

#Preview {
    TalentProfileView(path: .constant(NavigationPath()))
        .environmentObject(UserModel())
}
