//
//  AchievementView.swift
//  Wavern
//
//  Created by Paulus Michael on 20/06/24.
//

import SwiftUI

struct RewardsView: View {
    @Binding var path: NavigationPath
    @EnvironmentObject var user: UserModel

    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                HStack {
                    Button(action: {
                        path.removeLast()
                    }, label: {
                        Image(systemName: "arrow.left")
                        Text("Wavern Rewards")
                            .font(Fonts.semibold16)
                    })
                    .foregroundStyle(.white)

                    Spacer()
                }

                VStack(alignment: .leading, spacing: 20) {
                    Text("Jesslyn Devaline")
                        .font(Fonts.medium16)
                        .foregroundStyle(.white)

                    HStack {
                        Text("\(user.points) Points")
                            .font(Fonts.medium14)
                            .foregroundStyle(.white)

                        Image(systemName: "chevron.right")
                            .foregroundStyle(.white)
                    }

                    ProgressView(value: Double(user.points) / 1000.0)
                        .tint(.yellow)
                }
                .padding(.vertical)
            }
            .padding()
            .padding(.top, 60)
            .background(
                Background.bgGradient
            )
            .clipShape(CustomCorners(corners: [.bottomLeft, .bottomRight], radius: 12))

            Text("Certification")
                .font(Fonts.semibold20)
                .foregroundStyle(.neutral600)
                .padding()

            VStack {
                VStack(alignment: .leading) {
                    Text("Human Resource Associate")
                        .padding(.horizontal)
                        .padding(.top)
                        .font(Fonts.semibold16)
                        .foregroundStyle(Colors.neutral600)

                    Text("Skills: Benefits, Compensation, Employee Relations, Leadership and Management, Merger & Acquisition...")
                        .font(Fonts.regular13)
                        .foregroundColor(.gray)
                        .lineLimit(2) // Ensures the text is truncated if it exceeds one line
                        .truncationMode(.tail)
                        .padding(.horizontal)
                        .padding(.top, 4)
                        .padding(.bottom, 8)

                    HStack {
                        Text("\(user.points) Points")
                            .font(Fonts.semibold14)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)

                        Spacer()

                        CustomButtons(text: "Exchange", bgColor: Colors.white, txtColor: Colors.purple600, height: 32, action: {})
                    }
                    .padding()
                    .background(
                        Background.bgGradient
                    )
                }
                .background(Colors.white)
                .clipShape(RoundedRectangle(cornerRadius: Size.cornerRadius))
                .overlay {
                    RoundedRectangle(cornerRadius: Size.cornerRadius)
                        .stroke(.black.opacity(0.1))
                }
                .padding(.horizontal)
            }
        }
        .ignoresSafeArea()

        Spacer()
    }
}

#Preview {
    RewardsView(path: .constant(NavigationPath()))
        .environmentObject(UserModel())
}

