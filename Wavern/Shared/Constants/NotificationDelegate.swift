//
//  NotificationDelegate.swift
//  Wavern
//
//  Created by Paulus Michael on 11/06/24.
//

import UserNotifications

class NotificationDelegate: NSObject, UNUserNotificationCenterDelegate {
   func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
      completionHandler([.banner, .sound])
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
