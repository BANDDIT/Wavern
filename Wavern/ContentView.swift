//
//  ContentView.swift
//  Wavern
//
//  Created by Arrick Russell Adinoto on 06/06/24.
//

import SwiftUI


// TODO: Dont use any generic name for class
struct ContentView: View {
   // TODO: handle the notification at App
   let notificationDelegate = NotificationDelegate()
   
   var body: some View {
      // TODO: Clean the command
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
      // TODO: Dont use any generic name for class
      MainView()
   }
}

#Preview {
   ContentView()
}
