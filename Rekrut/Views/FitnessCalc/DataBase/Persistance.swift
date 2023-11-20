//
//  Persistance.swift
//  Recruit
//
//  Created by Jakub Chodara on 20.11.2023.
//

import CoreData


struct PersistanceController{
    static let shared = PersistanceController()
    
    let containter: NSPersistentContainer
    
    
    init(){
        containter = NSPersistentContainer(name: "Resoults")
        
        containter.loadPersistentStores {(storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolver error: \(error)")
            }
        }
    }
}
