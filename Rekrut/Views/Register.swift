//
//  Register.swift
//  Rekrut
//
//  Created by Jakub Chodara on 20/11/2023.
//

import SwiftUI

struct Register: View {
    
    @State var Metod = ["Register", "Update", "Delete"]
    @State var  SelectedMetodIndex = 0
    @State var name: String = ""
    @State var surname: String = ""
    @State var PESEL: String = ""
    @State var MaturaPoints: String = ""
    @State var Response: String = ""
    
    var body: some View {
        Form{
            Section(header: Text(" User")){
                Picker(selection: $SelectedMetodIndex, label: Text("Select Operation")) {
                    ForEach(0 ..< Metod.count) {
                        Text(self.Metod[$0])
                    }
                }
                
                HStack{
                    Text("Name")
                    TextField("Name", text: $name)
                        .multilineTextAlignment(TextAlignment.center)
                        .padding(.top, 7.0)
                        .padding(.trailing, 61.0)
                }
                
                
                HStack{
                    Text("Surname")
                    TextField("Surname", text: $surname)
                        .multilineTextAlignment(TextAlignment.center)
                        .padding(.top, 7.0)
                        .padding(.trailing, 61.0)
                }
                
                HStack{
                    Text("PESEL")
                    TextField("PESEL", text: $PESEL)
                        .multilineTextAlignment(TextAlignment.center)
                        .padding(.top, 7.0)
                        .padding(.trailing, 61.0)
                }
                
                HStack{
                    Text("Matura Points")
                    TextField("Matura Points", text: $MaturaPoints)
                        .multilineTextAlignment(TextAlignment.center)
                        .padding(.top, 7.0)
                        .padding(.trailing, 61.0)
                }
                
                                
            }
            
            Section(header: Text("Send Data")){
                HStack {
                    Spacer()
                    VStack {
                        Text("Send Data")
                        Text("\(Response)")
                    }
                    Spacer()
                }
            }.onTapGesture {
                //validation
                if(!name.isEmpty && !surname.isEmpty && !PESEL.isEmpty && !MaturaPoints.isEmpty && Int(MaturaPoints) ?? 0 > 0){
                    //to do send data
                   
                   
                    let PESELCODED = encryptCaesarCipher(PESEL, shift: 43)
                    /*
                    let apiUrl = URL(string: "http://192.168.1.109:5000/api/receive_values")!

                    makeAPIRequest(metod: SelectedMetodIndex ,url: apiUrl, parameter1: name, parameter2: surname, parameter3: PESELCODED, parameter4: MaturaPoints) { result in
                        switch result {
                        case .success(let json):
                            print("Success! JSON response: \(json)")
                            Response = "Data Updated!"
                        case .failure(let error):
                            print("Error: \(error)")
                            Response = "\(error)"
                        }
                    }
                    */
                    if(SelectedMetodIndex == 0){
                        postUser(metod: SelectedMetodIndex,name: name, surname: surname, pesel: PESELCODED, maturaPoints: Int(MaturaPoints)!){ responseString in
                            if let responseString = responseString {
                                print("Response: \(responseString)")
                                Response = "Response: \(responseString)"
                            } else {
                                print("Error occurred.")
                                Response = "Error occurred:"
                            }
                        }

                    }else if(SelectedMetodIndex == 1){
                        
                        updateUserByPesel(pesel: PESELCODED, name: name, surname: surname, maturaPoints: Int(MaturaPoints)!) { result in
                            switch result {
                            case .success(let response):
                                Response =  "Response: \(response)"
                            case .failure(let error):
                                Response = "Error: \(error)"
                            }
                        }
                        
                    }else{
                        deleteUserByPesel(pesel: PESELCODED) { result in
                            switch result {
                            case .success(let response):
                                Response = "Response: \(response)"
                            case .failure(let error):
                                Response = "Error: \(error)"
                            }
                        }
                        
                    }
                    
                        
                    
                    
                }else{
                    Response = "Data error"
                }
                
            }

        }
    }
}


#Preview {
    Register()
}
