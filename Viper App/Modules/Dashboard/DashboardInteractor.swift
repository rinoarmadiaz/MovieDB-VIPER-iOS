//
//  DashboardInteractor.swift
//  Viper App
//
//  Created by Rino Armadiaz on 04/10/20.
//

import Foundation

let domainUrlString = "https://api.themoviedb.org/3/movie/popular?api_key=d670697d2e3f22a294bd761c88c3354f&language=en-US&page=1"

final class DashboardInteractor {
    func _fetchFilms(_ completionHandler: @escaping (MovieList) -> Void) {
        guard let url = URL(string: domainUrlString) else { return print("Error fetching API, no given URL within the function")}
        let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
            if let error = error {
                print("Error with fetching films: \(error)")
                return
            }
            guard let httpResponse = response as? HTTPURLResponse,
                (200...299).contains(httpResponse.statusCode) else {
                    print("Error with the response, unexpected result. \n response: \(String(describing: response))\n error : \(String(describing: error))")
                    return
            }
            if let data = data,
                let filmSummary = try? JSONDecoder().decode(MovieList.self, from: data) {
                completionHandler(filmSummary)
            }
        })
        task.resume()
    }
}

extension DashboardInteractor: DashboardInteractorInterface {
    func fetchFilms(completionHandler: @escaping (MovieList) -> Void) {
        _fetchFilms(completionHandler)
    }
}
