//
//  TrainingModel.swift
//  Rekrut
//
//  Created by Jakub Chodara on 19.11.2023.
//

import Foundation
import SwiftUI

struct Excesise: Identifiable{
    var id =  UUID().uuidString
    var excesiseTitel: String
    var reps: Int
    var series: Int
}
