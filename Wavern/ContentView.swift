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
      
      OnboardingView()
   }
}

#Preview {
   ContentView()
}
