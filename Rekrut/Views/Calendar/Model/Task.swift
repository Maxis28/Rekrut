//
//  Task.swift
//  Recruit
//
//  Created by Jakub Chodara on 20.11.2023.
//

import SwiftUI

//This is my task model

struct Task1: Identifiable{
    var id =  UUID().uuidString
    var taskTitle: String
    var taskDescription: String
    var taskDate: Date
}
