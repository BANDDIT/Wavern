//
//  ContentView.swift
//  Wavern
//
//  Created by Arrick Russell Adinoto on 06/06/24.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
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
                     Rectangle()
                        .frame(width: 8, height: 8)
                        .clipShape(
                           RoundedRectangle(cornerRadius: 25)
                        )
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
               Gradient.Stop(color: Color(red: 0.33, green: 0.19, blue: 0.99), location: 0.00),
               Gradient.Stop(color: Color(red: 0.53, green: 0.45, blue: 1), location: 1.00),
            ],
            startPoint: UnitPoint(x: 0.5, y: 0),
            endPoint: UnitPoint(x: 0.5, y: 1)
         )
      )
   }
   
   // Function to request notification permission
   func requestNotificationPermission() {
      UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { granted, error in
         if granted {
            print("Permission granted")
         } else if let error = error {
            print("Error requesting permission: \(error.localizedDescription)")
         }
      }
   }
   
   // Function to schedule a notification
   func scheduleNotification() {
      let content = UNMutableNotificationContent()
      content.title = "Hello!"
      content.body = "This is a test notification."
      content.sound = .default
      
      // Trigger the notification to fire in 5 seconds
      let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
      
      // Create the request
      let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
      
      // Schedule the notification
      UNUserNotificationCenter.current().add(request) { error in
         if let error = error {
            print("Error scheduling notification: \(error.localizedDescription)")
         }
      }
   }
}

// Notification Delegate to handle notifications when the app is in the foreground
class NotificationDelegate: NSObject, UNUserNotificationCenterDelegate {
   func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
      completionHandler([.banner, .sound])
   }
}

#Preview {
   ContentView()
}
