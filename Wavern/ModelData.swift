//
//  ModelData.swift
//  Wavern
//
//  Created by Theresia Angela Ayrin on 24/06/24.
//

import Foundation

@Observable
class ModelData{
    var talentList: [Talent] = load("User_Table.json")
    var talentSkill: [TalentSkill] = load("User_SkillTable.json")
}


func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
