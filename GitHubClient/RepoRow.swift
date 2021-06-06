//
//  RepoRow.swift
//  GitHubClient
//
//  Created by 岡崎流依 on 2021/06/06.
//

import SwiftUI

struct RepoRow: View {
    let repo: Repo
    
    var body: some View {
        HStack {
            Image("GitHubMark")
                .resizable()
                .frame(width: 44, height: 44)
            VStack(alignment: .leading) {
                Text(repo.owner.name)
                    .font(.caption)
                Text(repo.name)
                    .font(.body)
                    .fontWeight(.semibold)
            }
        }
    }
}

