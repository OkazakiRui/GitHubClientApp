//
//  RepoRepository.swift
//  GitHubClient
//
//  Created by 岡崎流依 on 2021/06/08.
//

import Foundation
import Combine

struct RepoRepository {
    func fetchRepos() -> AnyPublisher<[Repo], Error> {
        RepoAPIClient().getRepos()
    }
}
