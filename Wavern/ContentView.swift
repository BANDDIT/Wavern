//
//  ContentView.swift
//  Wavern
//
//  Created by Arrick Russell Adinoto on 06/06/24.
//

import SwiftUI

struct ContentView: View {
   let notificationDelegate = NotificationDelegate()
   
   var body: some View {
      //        VStack {
      //            Text("Wavern Notification Demo")
      //                .padding()
      //
      //            Button(action: {
      //                requestNotificationPermission()
      //                scheduleNotification()
      //            }) {
      //                Text("Schedule Notification")
      //                    .padding()
      //                    .background(Color.blue)
      //                    .foregroundColor(.white)
      //                    .cornerRadius(10)
      //            }
      //        }
      //        .onAppear {
      //            UNUserNotificationCenter.current().delegate = NotificationDelegate()
      //        }
      
      VStack {
         Spacer()
         
         ZStack {
            Rectangle()
               .frame(height: 300)
               .foregroundStyle(.white)
            
            VStack{
               // MARK: Tiga button diatas
               HStack{
                  ForEach(0..<3){ _ in
                     Circle()
                        .frame(width: 8, height: 8)
                        .opacity(0.2)
                  }
               }
               
               // MARK: Title
               VStack {
                  Text("We Help Hiring Partners Connect with Tech Talents")
                     .multilineTextAlignment(.center)
                     .font(.title)
                     .fontWeight(.semibold)
                     .padding(.vertical, 16)
               }
               
               // MARK: Button login & sign up
               VStack {
                  Button(action: {}) {
                     Text("Login")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .font(.system(size: 17))
                        .fontWeight(.semibold)
                        .padding()
                        .foregroundColor(.white)
                        .overlay(
                           RoundedRectangle(cornerRadius: 12)
                              .stroke(Color.white, lineWidth: 2)
                        )
                  }
                  .background(.primaryPurple)
                  .cornerRadius(12)
                  
                  Button(action: {}) {
                     Text("Sign Up")
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .font(.system(size: 17))
                        .fontWeight(.semibold)
                        .padding()
                        .foregroundColor(.primaryPurple)
                  }
                  .cornerRadius(12)
               }
            }
            .padding(.horizontal, 24)
            
         }
      }
      .ignoresSafeArea()
      .background(
         LinearGradient(
            stops: [
               Gradient.Stop(color: .primaryPurple, location: 0.00),
               Gradient.Stop(color: .secondaryPurple, location: 1.00),
            ],
            startPoint: UnitPoint(x: 0.5, y: 0),
            endPoint: UnitPoint(x: 0.5, y: 1)
         )
      )
   }
}

#Preview {
   ContentView()
}
