//
//  NetworkManager.swift
//  NBA Stats
//
//  Created by Manuel Casocavallo on 05/07/21.
//

import Foundation



final class NetworkManager {
    let shared = NetworkManager()
    
    let yesterday   = "2021-JAN-11"
    let today       = "2021-JAN-12"
    let tomorrow    = "2021-JAN-13"

    let standingsEndpoint   = "https://fly.sportsdata.io/v3/nba/scores/json/Standings/2021?key=\(apiKey)"

//    let yesterdayEndpoint   = "https://fly.sportsdata.io/v3/nba/scores/json/GamesByDate/\(yesterday)?key=\(apiKey)"
//    let todayEndpoint       = "https://fly.sportsdata.io/v3/nba/scores/json/GamesByDate/\(today)?key=\(apiKey)"
//    let tomorrowEndpoint    = "https://fly.sportsdata.io/v3/nba/scores/json/GamesByDate/\(tomorrow)?key=\(apiKey)"
    
    func getStandings(completed: @escaping (Result<[Standings], Error>) -> Void) {
        guard let url = URL(string: standingsEndpoint) else {
            completed(.failure(NBAError.badUrl))
            return
        }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let _ = error {
                completed(.failure(NBAError.invalidResponse))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(NBAError.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(NBAError.invalidData))
                return
            }
            
            let decoder = JSONDecoder()
            
            do {
                let standings = try decoder.decode([Standings].self, from: data)
                completed(.success(standings))
            } catch {
                print(error.localizedDescription)
                completed(.failure(NBAError.decodingError))
            }
            
            
        }
        task.resume()
        
    }
    
    
}
