//
//  lastTrainingView.swift
//  AcademyRecruit
//
//  Created by Jakub Chodara on 10/10/2022.
//

import SwiftUI

struct lastTrainingView: View {
    @State var myTrainingPlan = 0
    var body: some View {
        HStack{
            VStack{
                Text("Last training Program")
                    .font(.headline)
                    .padding(.top, 6)
                    .foregroundColor(.white)
                Text("\(String(myTrainingPlan))")
                    .font(.headline)
                    .foregroundColor( .white)
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1), execute: {
                            myTrainingPlan = Shared.shared.SelectedLvl ?? 1
                    })
                    }

            }
            
            VStack{
                Image(systemName: "calendar")
                    .resizable()
                    .resizable()
                    .frame(width: 70, height: 70)
                    .foregroundColor(.white)

               
            }
            
        }
        .padding()
        .background(Color( UIColor(red: 0.12, green: 0.64, blue: 0.27, alpha: 1.00) ))
        .cornerRadius(20)
        .frame(width: 300, height: 160)
        .onTapGesture {
            myTrainingPlan = Shared.shared.SelectedLvl ?? 1
        }
    }
    }

struct lastTrainingView_Previews: PreviewProvider {
    static var previews: some View {
        lastTrainingView()
    }
}
