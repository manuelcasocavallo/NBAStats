//
//  GamesViewModel.swift
//  NBAStats
//
//  Created by Manuel Casocavallo on 05/07/21.
//

import Foundation



class GamesViewModel: ObservableObject {
    @Published var yesterdaysGames = [Game]()
    @Published var todaysGames = [Game]()
    @Published var tomorrowsGames = [Game]()
    
    @Published var errorMessage: String?
    @Published var isShowingError = false
    
    
    init() {
        self.getGames(day: "2021-JAN-11") { results in
            switch results {
            case .success(let games):
                self.yesterdaysGames = games
//                print("Yesterday Call")
            case .failure(let error):
                self.errorMessage = error.localizedDescription
                self.isShowingError = true
                self.yesterdaysGames = []
            }
        }
        
        self.getGames(day: "2021-JAN-12") { results in
            switch results {
            case .success(let games):
                self.todaysGames = games
//                print("Today Call")
            case .failure(let error):
                self.errorMessage = error.localizedDescription
                self.isShowingError = true
                self.todaysGames = []
            }
        }
        
        self.getGames(day: "2021-JAN-13") { results in
            switch results {
            case .success(let games):
                self.tomorrowsGames = games
//                print("Tomorrow Call")
            case .failure(let error):
                self.errorMessage = error.localizedDescription
                self.isShowingError = true
                self.tomorrowsGames = []
            }
        }
    }
    
    
    static let day = "2021-JAN-11"
    
    
    func getGames(day: String, completed: @escaping (Result<[Game], Error>) -> Void) {
        let endpoint = "https://fly.sportsdata.io/v3/nba/scores/json/GamesByDate/\(day)?key=\(apiKey)"

        guard let url = URL(string: endpoint) else {
            completed(.failure(NBAError.badUrl))
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let _ = error {
                completed(.failure(NBAError.invalidData))
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
                let games = try decoder.decode([Game].self, from: data)
                completed(.success(games))
            } catch {
                print(error.localizedDescription)
                completed(.failure(NBAError.decodingError))
            }
        }
        task.resume()
    }
}
