//
//  SharedData.swift
//  Recruit
//
//  Created by Jakub Chodara on 20.11.2023.
//

import Foundation
final class Shared {
     static let shared = Shared() //lazy init, and it only runs once

    var Lat : Double!
    var Long : Double!
    var MyPoints : Double!
    var SelectedLvl: Int!
    
}
