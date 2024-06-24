//
//  Talent.swift
//  Wavern
//
//  Created by Paulus Michael on 21/06/24.
//

import Foundation


struct Talent: Codable, Hashable {
    var User_Nama: String
    var User_Email: String
    var User_Password: String
    var User_Description: String
    var Role: String
    var Experience: Int
    var Offering: Int
    var Willing_To_relocate: String
    var Interview_Count: Int
    
//    {
//      "User_Nama": "Jane Smith",
//      "User_Email": "jane.smith@example.com",
//      "User_Password": "qwerty456",
//      "User_Description": "Front-end developer passionate about creating user-friendly interfaces.",
//      "Role": "Business Analyst",
//      "Experience": 3,
//      "Offering": 8000000,
//      "Willing_To_relocate": "Remote",
//      "Interview_Count": 2
//    },
}
