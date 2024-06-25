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

}
