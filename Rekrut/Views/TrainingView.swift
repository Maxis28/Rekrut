//
//  TrainingView.swift
//  Rekrut
//
//  Created by Jakub Chodara on 19.11.2023.
//

import SwiftUI

struct TrainingView: View {
    @State var TrainingPattern = "Select training Pattern"
    @State var TrainingSelected = 1
    @State var isPrivate: Bool = true
    @State var trainings = ExcesiseViewModel().StoredExcesise1
    @State var excesise1 =  [false, false, false, false, false, false, false]
    @State var excesise2 =  [false, false, false, false, false, false, false]
    @State var excesise3 =  [false, false, false, false, false, false, false]
    @State var excesise4 =  [false, false, false, false, false, false, false]

    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \Task.date, ascending: false)])
    private var tasks: FetchedResults<Task>
    
    var body: some View {
        VStack{
            Menu{
                Button(action: {
                    TrainingSelected = 1
                    trainings = ExcesiseViewModel().StoredExcesise1
                    TrainingPattern = "You selected: " + String(TrainingSelected)
                    Shared.shared.SelectedLvl = TrainingSelected
                    print("Selected1")
                }, label: {
                    Text("1")
                })
                Button(action: {
                    TrainingSelected = 2
                    trainings = ExcesiseViewModel().StoredExcesise2
                    TrainingPattern = "You selected: " + String(TrainingSelected)
                    Shared.shared.SelectedLvl = TrainingSelected
                }, label: {
                    Text("2")
                })
                Button(action: {
                    TrainingSelected = 3
                    trainings = ExcesiseViewModel().StoredExcesise3
                    TrainingPattern = "You selected: " + String(TrainingSelected)
                    Shared.shared.SelectedLvl = TrainingSelected
                }, label: {
                    Text("3")
                })
                Button(action: {
                    TrainingSelected = 4
                    trainings = ExcesiseViewModel().StoredExcesise4
                    TrainingPattern = "You selected: " + String(TrainingSelected)
                    Shared.shared.SelectedLvl = TrainingSelected
                }, label: {
                    Text("4")
                })
                Button(action: {
                    TrainingSelected = 5
                    trainings = ExcesiseViewModel().StoredExcesise5
                    TrainingPattern = "You selected: " + String(TrainingSelected)
                    Shared.shared.SelectedLvl = TrainingSelected
                }, label: {
                    Text("5")
                })
                Button(action: {
                    TrainingSelected = 6
                    trainings = ExcesiseViewModel().StoredExcesise6
                    TrainingPattern = "You selected: " + String(TrainingSelected)
                    Shared.shared.SelectedLvl = TrainingSelected
                }, label: {
                    Text("6")
                })
                Button(action: {
                    TrainingSelected = 7
                    trainings = ExcesiseViewModel().StoredExcesise7
                    TrainingPattern = "You selected: " + String(TrainingSelected)
                    Shared.shared.SelectedLvl = TrainingSelected
                }, label: {
                    Text("7")
                })
            }label:{
                Label(
                    title:{Text("\(TrainingPattern)")},
                    icon: {Image(systemName: "figure.cooldown")}
                ).foregroundColor(Color.black)
            }
            Spacer()
            Form{
                
                Section(header: Text("Training List")){
                    VStack{
//                        let trainingModel: ExcesiseViewModel = ExcesiseViewModel()
//                        var trainings = trainingModel.StoredExcesise3
                   
//                        if(TrainingSelected == 1){
//                             trainings = trainingModel.StoredExcesise1
//                        }else if(TrainingSelected == 2){
//                             trainings = trainingModel.StoredExcesise2
//                        }else if(TrainingSelected == 3){
//                             trainings = trainingModel.StoredExcesise3
//                        }else if(TrainingSelected == 4){
//                             trainings = trainingModel.StoredExcesise4
//                        }else if(TrainingSelected == 5){
//                            trainings = trainingModel.StoredExcesise5
//                        }else if(TrainingSelected == 6){
//                            trainings = trainingModel.StoredExcesise6
//                        }else if(TrainingSelected == 7){
//                            trainings = trainingModel.StoredExcesise7
//                        }
                  
                     
                    
                        
                                ForEach(trainings){Train in
                                    VStack(alignment: .leading, spacing: 12) {
                                        HStack{
                                            VStack(alignment: .leading, spacing: 12){
                                                Text(Train.excesiseTitel)
                                                    .font(.title2.bold())
                                                    .multilineTextAlignment(.leading)
                                            }}
                                
                                        //max 6 series
                                        ForEach((1...Train.series), id: \.self) {
                                            let i = $0
                                            
                                            switch Train.excesiseTitel {
                                            case "Push ups":
                                                Toggle("\(i) Serie: \(Train.reps) Reps", isOn: $excesise1[$0])

                                            case "Pull ups":
                                                Toggle("\(i) Serie: \(Train.reps) Reps", isOn: $excesise2[$0])

                                            case "Sit ups":
                                                Toggle("\(i) Serie: \(Train.reps) Reps", isOn: $excesise3[$0])

                                            default:
                                                Toggle("\(i) Serie: \(Train.reps) Reps", isOn: $excesise4[$0])
                                            }
                                        }
                                    }
                                    .foregroundColor( .white )
                                    .padding(12)
                                    .frame(width: 330)
                                    .background(
                                            Color(UIColor(red: 0.12, green: 0.64, blue: 0.27, alpha: 1.00))
                                                .cornerRadius(25)
                                                .opacity( 1 ))
                        }
                    }
                }
                Section(header: Text("End Training")){
                  Text("To save training navigate to Home page")
                }
                
            }
        }
    }
}

struct TrainingView_Previews: PreviewProvider {
    static var previews: some View {
        TrainingView()
    }
}


