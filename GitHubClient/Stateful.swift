//
//  Stateful.swift
//  GitHubClient
//
//  Created by 岡崎流依 on 2021/06/08.
//

import Foundation

enum Stateful<Value> {
    case idle
    case loading
    case failed(Error)
    case loaded(Value)
}
