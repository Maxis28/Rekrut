//
//  ApiRequest.swift
//  Rekrut
//
//  Created by Jakub Chodara on 21/11/2023.
//

import Foundation

func makeAPIRequest(metod: Int, url: URL, parameter1: String, parameter2: String, parameter3: String, parameter4: String, completion: @escaping (Result<Any, Error>) -> Void) {
    var request = URLRequest(url: url)
    
    // Example: Set HTTP method to POST and set parameters in the request body
    if(metod == 0){
        request.httpMethod = "POST"
    }else if(metod == 1){
        request.httpMethod = "PUT"
    }else{
        request.httpMethod = "DELETE"
    }

    let parameters = ["value1": parameter1, "value2": parameter2, "value3": parameter3, "value4": parameter4]
    request.httpBody = try? JSONSerialization.data(withJSONObject: parameters)
    request.addValue("application/json", forHTTPHeaderField: "Content-Type")
    
    let session = URLSession.shared
    
    let task = session.dataTask(with: request) { (data, response, error) in
        if let error = error {
            completion(.failure(error))
            return
        }
        
        guard let responseData = data else {
            completion(.failure(NSError(domain: "com.example", code: 0, userInfo: [NSLocalizedDescriptionKey: "No data received"])))
            return
        }

        do {
            let json = try JSONSerialization.jsonObject(with: responseData, options: [])
            completion(.success(json))
        } catch {
            completion(.failure(error))
        }
    }

    task.resume()
}

// Example usage:

