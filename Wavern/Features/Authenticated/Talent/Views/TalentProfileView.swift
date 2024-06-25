//
//  TalentProfileView.swift
//  Wavern
//
//  Created by Paulus Michael on 24/06/24.
//

import SwiftUI

struct TalentProfileView: View {
    @Binding var path: NavigationPath
    @Binding var progress: Double
    @State var isInvited: Bool = false
    @EnvironmentObject var user: UserModel
    var viewModel = TalentViewModel()
    
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
                            if !user.isChallengeCompleted {
                                viewModel.feedbackPopUp(isInvited: $isInvited)
                                progress = 1.0 // Update progress to full when talent is reached out to
                                user.points += 100 // Add points
                                user.isChallengeCompleted = true // Mark the challenge as completed
                                path.append(Destination.completedChallengeView) // Navigate to CompletedChallenge
                            } else {
                                // Show feedback that challenge is already completed
                                viewModel.feedbackPopUp(isInvited: $isInvited)
                            }
                        }
                    })
                }
                .padding(.horizontal)
            }
            .frame(maxHeight: .infinity)
            .background(Colors.white)
        }
        .overlay(content: {
            if isInvited {
                SuccessFeedbackView()
            }
        })
        .background(Background.bgGradient)
    }
}

#Preview {
    TalentProfileView(path: .constant(NavigationPath()), progress: .constant(0.0))
        .environmentObject(UserModel())
}
