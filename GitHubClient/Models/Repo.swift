//
//  Repo.swift
//  GitHubClient
//
//  Created by 岡崎流依 on 2021/06/06.
//

import Foundation

struct Repo: Identifiable {
    var id:Int
    var name:String
    var owner:User
}
