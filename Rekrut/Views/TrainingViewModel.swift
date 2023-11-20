//
//  TrainingViewModel.swift
//  Rekrut
//
//  Created by Jakub Chodara on 19.11.2023.
//

import Foundation
import SwiftUI


class ExcesiseViewModel: ObservableObject{
    
    @Published var StoredExcesise1: [Excesise] = [
    Excesise(excesiseTitel: "Push ups", reps: 10, series: 5),
    Excesise(excesiseTitel: "Pull ups", reps: 2, series: 5),
    Excesise(excesiseTitel: "Sit ups", reps: 10, series: 5),
    Excesise(excesiseTitel: "Jumping jacks", reps: 10, series: 5)
    ]
    @Published var StoredExcesise2: [Excesise] = [
    Excesise(excesiseTitel: "Push ups", reps: 12, series: 5),
    Excesise(excesiseTitel: "Pull ups", reps: 3, series: 5),
    Excesise(excesiseTitel: "Sit ups", reps: 12, series: 5),
    Excesise(excesiseTitel: "Jumping jacks", reps: 12, series: 5)
    ]
    @Published var StoredExcesise3: [Excesise] = [
    Excesise(excesiseTitel: "Push ups", reps: 14, series: 5),
    Excesise(excesiseTitel: "Pull ups", reps: 4, series: 5),
    Excesise(excesiseTitel: "Sit ups", reps: 14, series: 5),
    Excesise(excesiseTitel: "Jumping jacks", reps: 14, series: 5)
    ]
    @Published var StoredExcesise4: [Excesise] = [
    Excesise(excesiseTitel: "Push ups", reps: 16, series: 5),
    Excesise(excesiseTitel: "Pull ups", reps: 6, series: 5),
    Excesise(excesiseTitel: "Sit ups", reps: 16, series: 5),
    Excesise(excesiseTitel: "Jumping jacks", reps: 16, series: 5)
    ]
    @Published var StoredExcesise5: [Excesise] = [
    Excesise(excesiseTitel: "Push ups", reps: 18, series: 5),
    Excesise(excesiseTitel: "Pull ups", reps: 8, series: 5),
    Excesise(excesiseTitel: "Sit ups", reps: 18, series: 5),
    Excesise(excesiseTitel: "Jumping jacks", reps: 18, series: 5)
    ]
    @Published var StoredExcesise6: [Excesise] = [
    Excesise(excesiseTitel: "Push ups", reps: 14, series: 6),
    Excesise(excesiseTitel: "Pull ups", reps: 4, series: 6),
    Excesise(excesiseTitel: "Sit ups", reps: 14, series: 6),
    Excesise(excesiseTitel: "Jumping jacks", reps: 14, series: 6)
    ]
    @Published var StoredExcesise7: [Excesise] = [
    Excesise(excesiseTitel: "Push ups", reps: 16, series: 6),
    Excesise(excesiseTitel: "Pull ups", reps: 6, series: 6),
    Excesise(excesiseTitel: "Sit ups", reps: 16, series: 6),
    Excesise(excesiseTitel: "Jumping jacks", reps: 16, series: 6)
    ]
    
    @Published var allTrainList: [Excesise]?
    
    func allTrainigs(){
        
        let attTrain = self.StoredExcesise1
        
        self.allTrainList = attTrain
    }
    
    
}
