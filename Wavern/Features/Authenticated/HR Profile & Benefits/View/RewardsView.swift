//
//  AchievementView.swift
//  Wavern
//
//  Created by Paulus Michael on 20/06/24.
//

import SwiftUI

class Certification: Identifiable {
    var certifId = UUID()
    var certifTitle: String
    var certifDesc: String
    var certifPoints: Int

    init(title: String, desc: String, points: Int) {
        self.certifTitle = title
        self.certifDesc = desc
        self.certifPoints = points
    }
}

class RewardsViewModel: ObservableObject {
    @Published public var points: Double = 500
    @Published public var isShowMedal: Bool = false
    @Published private var dummyData = [
        Certification(title: "Human Resource Associate", desc: "Skills: Benefits, Compensation, Employee Relations, Leadership and Management, Merger & Acquisition...", points: 100),
        Certification(title: "Human Resource Associate", desc: "Skills: Benefits, Compensation, Employee Relations, Leadership and Management, Merger & Acquisition...", points: 200),
        Certification(title: "Human Resource Associate", desc: "Skills: Benefits, Compensation, Employee Relations, Leadership and Management, Merger & Acquisition...", points: 500),
        Certification(title: "Human Resource Associate", desc: "Skills: Benefits, Compensation, Employee Relations, Leadership and Management, Merger & Acquisition...", points: 100)
    ]
    @Published var minusPoint: Int = 100

    public func deleteCertif(certif: Certification) {
        var i = -1
        for certification in dummyData {
            i = i + 1
            if certif.certifId == certification.certifId {
                dummyData.remove(at: i)
                break
            }
        }
    }

    public func getCertifData() -> [Certification] {
        return self.dummyData
    }

    public func getProgress() -> Double {
        return self.points / 500
    }

    public func getPoints() -> Int {
        return Int(self.points)
    }

    public func showMedalToggle() {
        isShowMedal.toggle()
    }

    public func minusPoint(add: Int) {
        minusPoint = add
        self.points = points - Double(add)
    }
}

struct RewardsCardView:View{
    
    var certif:Certification
    @ObservedObject var rewardsViewModel:RewardsViewModel
    @State var btnColor = Colors.purple600
    
    var body : some View{
        VStack(alignment: .leading) {
            Text("\(certif.certifTitle)")
                .padding(.horizontal)
                .padding(.top)
                .font(.system(size: 16, weight: .semibold))
                .foregroundColor(Color.gray)

            Text("\(certif.certifDesc)")
                .font(.system(size: 13, weight: .regular))
                .foregroundColor(.gray)
                .lineLimit(2)
                .truncationMode(.tail)
                .padding(.horizontal)
                .padding(.top, 4)
                .padding(.bottom, 8)

            HStack {
                Text("\(certif.certifPoints) Points")
                    .font(Fonts.semibold14)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)

                Spacer()

                CustomButtons(text: "Exchange", bgColor: Int(rewardsViewModel.points) - certif.certifPoints >= 0 ? Colors.white : Colors.neutral300, txtColor: Int(rewardsViewModel.points) - certif.certifPoints >= 0 ? Colors.purple600 : Colors.neutral600, height: 32, action: {
                        withAnimation{
                            
                            if(rewardsViewModel.getPoints()-certif.certifPoints>=0){
                                rewardsViewModel.minusPoint(add: certif.certifPoints)
                                rewardsViewModel.deleteCertif(certif: certif)
                                rewardsViewModel.showMedalToggle()
                            }
                            

                        }
                    })
                
            }
            .padding()
            .background(Background.bgGradient)
            
    
            
        }

    }
}

// View Definitions
struct RewardsView: View {
    @Binding var path: NavigationPath
    @StateObject var rewardsViewModel = RewardsViewModel()

    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                HStack {
                    Button(action: {
                        path.removeLast()
                    }, label: {
                        Image(systemName: "arrow.left")
                        Text("Wavern Rewards")
                            .font(.system(size: 16, weight: .semibold))
                    })
                    .foregroundColor(.white)

                    Spacer()
                }

                VStack(alignment: .leading, spacing: 20) {
                    Text("Jesslyn Devaline")
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(.white)

                    HStack {
                        Text("\(rewardsViewModel.getPoints()) Points")
                            .font(.system(size: 14, weight: .medium))
                            .foregroundColor(.white)

                        Image(systemName: "chevron.right")
                            .foregroundColor(.white)
                    }

                    ProgressView(value: 0.3)
                        .tint(.yellow)
                        .background(Color.white)
                        .cornerRadius(10)
                }
                .padding(.vertical)
            }
            .padding()
            .padding(.top, 60)
            .background(Background.bgGradient)
            .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))

            Text("Certification")
                .font(.system(size: 20, weight: .semibold))
                .foregroundColor(Color.gray)
                .padding()
            
            ScrollView {
                VStack {
                    ForEach(rewardsViewModel.getCertifData()) { certif in
                        RewardsCardView(certif:certif,rewardsViewModel: rewardsViewModel)
                        .background(Color.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.black.opacity(0.1))
                        )
                        .padding(.horizontal)
                    }
                }
            }
             
        }
        .ignoresSafeArea()
        .overlay {
            if rewardsViewModel.isShowMedal {
                CompletedChallenge(path: .constant(NavigationPath()),isShow:$rewardsViewModel.isShowMedal, title1:"Exchange",title2:"Successfully",btnText:"Done",points:rewardsViewModel.minusPoint)
                    .ignoresSafeArea()
            }
        }
    }
}

#Preview {
    RewardsView(path: .constant(NavigationPath()))
        .environmentObject(UserModel())
}
