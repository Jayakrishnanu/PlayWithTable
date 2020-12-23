//
//  Service.swift
//  CellViews
//
//  Created by Jayakrishnan u on 12/22/20.
//

import Foundation

struct Service {
    static func performAPI<Type: Decodable>(url: String, type: Type, completionHandler: @escaping(Result<[Type], Error>) -> Void) {
        
        guard let url = URL(string: url) else { return }
        let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
            guard let httpResponse = response as? HTTPURLResponse, (200..<300).contains(httpResponse.statusCode) else {
                return
            }
            if let error = error {
                print(error)
            }
            guard let data = data else { return }
            let decoder = JSONDecoder()
            do {
                let response = try decoder.decode([Type].self, from: data)
                completionHandler(.success(response))
            } catch {
                completionHandler(.failure(error))
            }
            
        })
        task.resume()
    }
    
    static func convertToJSON() -> [Course] {
        let encoder = JSONEncoder()
        let decoder = JSONDecoder()
        do {
            let data = try encoder.encode(coursesJSON)
            let string = String(data: data, encoding: .utf8)!
            print(string)
            
            do {
                let response = try decoder.decode([Course].self, from: data)
                return response
            }
            
        } catch {
            print(error)
        }
        return []
       
    }
    
    static var coursesJSON = [
        Course(id: "1", courseName: "Artificial Intelligence", courseDescription: "New technology of learing artificial intelligence. Courses starts from next summer", lessions: 32),
        Course(id: "2", courseName: "Machine Learning", courseDescription: "Learn the new machine courses in the machine", lessions: 20),
        Course(id: "3", courseName: "Mobile Application Development", courseDescription: "Learn iOS and Andriod development course", lessions: 12)
    ]
}

