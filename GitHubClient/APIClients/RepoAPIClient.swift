//
//  RepoAPIClient.swift
//  GitHubClient
//
//  Created by 岡崎流依 on 2021/06/08.
//

import Foundation
import Combine

struct RepoAPIClient {
    func getRepos() -> AnyPublisher<[Repo], Error> {
        let url = URL(string: "https://api.github.com/users/OkazakiRui/repos")!

        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = "GET"
        urlRequest.allHTTPHeaderFields = [
            "Accept": "application/vnd.github.v3+json"
        ]

        return URLSession.shared.dataTaskPublisher(for: urlRequest)
            .tryMap() { element -> Data in
                guard let httpResponse = element.response as? HTTPURLResponse,
                      httpResponse.statusCode == 200 else {
                    throw URLError(.badServerResponse)
                }
                return element.data
            }
            .decode(type: [Repo].self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
