//
//  HRmaxStruct.swift
//  Recruit
//
//  Created by Jakub Chodara on 20.11.2023.
//

import Foundation


struct HRmax: Identifiable, Codable{
    var id = UUID()
    var gender: String
    var weight: Int
    var age: Int
    var HRmaX: Double
    
    static var exampleHRmax = HRmax(gender: "male", weight: 90, age: 22, HRmaX: 197.02)
}
