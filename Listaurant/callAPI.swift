//
//  callAPI.swift
//  Listaurant
//
//  Created by Vincent Gunawan on 03/07/22.
//

import Foundation
class callAPI {
    func getRestaurants(completion:@escaping ([Restaurant]) -> ()) {
        guard let url = URL(string: "https://restaurant-api.dicoding.dev/list") else { return }
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let users = try! JSONDecoder().decode([Restaurant], from: data!)
            print(users)
            
            DispatchQueue.main.async {
                completion(users)
            }
        }
        .resume()
    }
}
